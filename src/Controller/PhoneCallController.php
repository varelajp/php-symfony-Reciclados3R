<?php

namespace App\Controller;

use App\Entity\PhoneCall;
use App\Form\PhoneCallType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

// #[Route('/phone/call')]
#[Route('/calls')]
class PhoneCallController extends AbstractController
{
    #[Route('/', name: 'app_phone_call_index', methods: ['GET'])]
    public function index(EntityManagerInterface $entityManager): Response
    {
        $this->denyAccessUnlessGranted('IS_AUTHENTICATED_FULLY');

        if (!isset($_SERVER['HTTP_REFERER'])) {
            return $this->redirectToRoute('app_logout', [], Response::HTTP_SEE_OTHER);
        }

        // $phoneCalls = $entityManager
        //     ->getRepository(PhoneCall::class)
        //     ->findAll();

        $sql = "
            SELECT
              p.id,
              u.full_name user,
              c.full_name client,
              c.company,
              c.phone,
              p.department department,
              p.state,
              SUBSTRING(p.description, 1, 10) description,
              p.deleted_at
            FROM
              phone_call p
              INNER JOIN user u ON p.user_name = u.user_name
              INNER JOIN client c ON p.client_id = c.id
        ";
        //Only Boss role and Customer service department access all call notes.
        //Otherwise, each department access its associated notes.
        if (
            $this->getUser()->getRole() != 'Boss' &&
            $this->getUser()->getDepartment() != 'Customer service'
        ) {
            $sql .= " WHERE p.department = '" . $this->getUser()->getDepartment() . "'";
        }

        $phoneCalls = $entityManager
            ->getConnection()
            ->executeQuery($sql);

        return $this->render('phone_call/index.html.twig', [
            'phone_calls' => $phoneCalls->fetchAllAssociative(),
        ]);
    }

    #[Route('/new', name: 'app_phone_call_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $this->denyAccessUnlessGranted('IS_AUTHENTICATED_FULLY');

        if (!isset($_SERVER['HTTP_REFERER'])) {
            return $this->redirectToRoute('app_logout', [], Response::HTTP_SEE_OTHER);
        }

        $phoneCall = new PhoneCall();
        $phoneCall->setUserName($this->getUser());
        $form = $this->createForm(PhoneCallType::class, $phoneCall, ['is_new' => true]);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($phoneCall);
            $entityManager->flush();

            return $this->redirectToRoute('app_phone_call_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('phone_call/new.html.twig', [
            'phone_call' => $phoneCall,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_phone_call_show', requirements: ['id' => '\d+'], methods: ['GET'])]
    // public function show(PhoneCall $phoneCall): Response
    public function show(int $id, EntityManagerInterface $entityManager): Response
    {
        $this->denyAccessUnlessGranted('IS_AUTHENTICATED_FULLY');

        if (!isset($_SERVER['HTTP_REFERER'])) {
            return $this->redirectToRoute('app_logout', [], Response::HTTP_SEE_OTHER);
        }

        $sql = "SELECT * FROM phone_call WHERE id = $id";
        $sql = "
            SELECT
              p.id,
              u.full_name user,
              c.full_name client,
              c.company,
              c.phone,
              p.department department,
              p.state,
              p.created_at,
              p.modified_at,
              p.reactivated_at,
              p.deleted_at,
              description
            FROM
              phone_call p
              INNER JOIN user u ON p.user_name = u.user_name
              INNER JOIN client c ON p.client_id = c.id
            WHERE
              p.id = $id
        ";

        $phoneCall = $entityManager
            ->getConnection()
            ->executeQuery($sql);

        return $this->render('phone_call/show.html.twig', [
            'phone_call' => $phoneCall->fetchAllAssociative()[0],
            // 'phone_call' => $phoneCall,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_phone_call_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, PhoneCall $phoneCall, EntityManagerInterface $entityManager): Response
    {
        $this->denyAccessUnlessGranted('IS_AUTHENTICATED_FULLY');

        if (!isset($_SERVER['HTTP_REFERER'])) {
            return $this->redirectToRoute('app_logout', [], Response::HTTP_SEE_OTHER);
        }

        if ($phoneCall->getUserName()->getUserName() == $this->getUser()->getUserName()) {
            $form = $this->createForm(PhoneCallType::class, $phoneCall, [
                'is_edit' => true,
            ]);
        } else {
            $form = $this->createForm(PhoneCallType::class, $phoneCall, [
                'is_edit' => true,
                'is_owner' => true,
            ]);
        }

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_phone_call_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('phone_call/edit.html.twig', [
            'phone_call' => $phoneCall,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_phone_call_delete', methods: ['POST'])]
    public function delete(Request $request, PhoneCall $phoneCall, EntityManagerInterface $entityManager): Response
    {
        // if ($this->isCsrfTokenValid('delete' . $phoneCall->getId(), $request->request->get('_token'))) {
        //     $entityManager->remove($phoneCall);
        //     $entityManager->flush();
        // }

        // return $this->redirectToRoute('app_phone_call_index', [], Response::HTTP_SEE_OTHER);

        $this->denyAccessUnlessGranted('IS_AUTHENTICATED_FULLY');

        if (!isset($_SERVER['HTTP_REFERER'])) {
            return $this->redirectToRoute('app_logout', [], Response::HTTP_SEE_OTHER);
        }

        $call_id = $phoneCall->getId();
        if ($this->isCsrfTokenValid('delete' . $call_id, $request->request->get('_token'))) {
            $sql = "
                UPDATE phone_call
                SET
                  deleted_at = CURRENT_TIMESTAMP,
                  reactivated_at = NULL
                WHERE id = $call_id
            ";

            $entityManager
                ->getConnection()
                ->executeQuery($sql);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_phone_call_index', [], Response::HTTP_SEE_OTHER);
    }

    #[Route('/{id}/activate', name: 'app_phone_call_activate', methods: ['POST'])]
    public function activate(Request $request, PhoneCall $phoneCall, EntityManagerInterface $entityManager): Response
    {
        $this->denyAccessUnlessGranted('IS_AUTHENTICATED_FULLY');

        if (!isset($_SERVER['HTTP_REFERER'])) {
            return $this->redirectToRoute('app_logout', [], Response::HTTP_SEE_OTHER);
        }

        $call_id = $phoneCall->getId();
        if ($this->isCsrfTokenValid('activate' . $call_id, $request->request->get('_token'))) {
            $sql = "
                UPDATE phone_call
                SET
                  deleted_at = NULL,
                  reactivated_at = CURRENT_TIMESTAMP
                WHERE id = $call_id
            ";

            $entityManager
                ->getConnection()
                ->executeQuery($sql);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_phone_call_index', [], Response::HTTP_SEE_OTHER);
    }
}
