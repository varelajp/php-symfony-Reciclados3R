<?php

namespace App\Test\Controller;

use App\Entity\PhoneCall;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\ORM\EntityRepository;
use Symfony\Bundle\FrameworkBundle\KernelBrowser;
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class PhoneCallControllerTest extends WebTestCase
{
    private KernelBrowser $client;
    private EntityManagerInterface $manager;
    private EntityRepository $repository;
    private string $path = '/phone/call/';

    protected function setUp(): void
    {
        $this->client = static::createClient();
        $this->manager = static::getContainer()->get('doctrine')->getManager();
        $this->repository = $this->manager->getRepository(PhoneCall::class);

        foreach ($this->repository->findAll() as $object) {
            $this->manager->remove($object);
        }

        $this->manager->flush();
    }

    public function testIndex(): void
    {
        $crawler = $this->client->request('GET', $this->path);

        self::assertResponseStatusCodeSame(200);
        self::assertPageTitleContains('PhoneCall index');

        // Use the $crawler to perform additional assertions e.g.
        // self::assertSame('Some text on the page', $crawler->filter('.p')->first());
    }

    public function testNew(): void
    {
        $this->markTestIncomplete();
        $this->client->request('GET', sprintf('%snew', $this->path));

        self::assertResponseStatusCodeSame(200);

        $this->client->submitForm('Save', [
            'phone_call[department]' => 'Testing',
            'phone_call[description]' => 'Testing',
            'phone_call[createdAt]' => 'Testing',
            'phone_call[modifiedAt]' => 'Testing',
            'phone_call[deletedAt]' => 'Testing',
            'phone_call[reactivatedAt]' => 'Testing',
            'phone_call[state]' => 'Testing',
            'phone_call[remark]' => 'Testing',
            'phone_call[client]' => 'Testing',
            'phone_call[userName]' => 'Testing',
        ]);

        self::assertResponseRedirects('/sweet/food/');

        self::assertSame(1, $this->getRepository()->count([]));
    }

    public function testShow(): void
    {
        $this->markTestIncomplete();
        $fixture = new PhoneCall();
        $fixture->setDepartment('My Title');
        $fixture->setDescription('My Title');
        $fixture->setCreatedAt('My Title');
        $fixture->setModifiedAt('My Title');
        $fixture->setDeletedAt('My Title');
        $fixture->setReactivatedAt('My Title');
        $fixture->setState('My Title');
        $fixture->setRemark('My Title');
        $fixture->setClient('My Title');
        $fixture->setUserName('My Title');

        $this->manager->persist($fixture);
        $this->manager->flush();

        $this->client->request('GET', sprintf('%s%s', $this->path, $fixture->getId()));

        self::assertResponseStatusCodeSame(200);
        self::assertPageTitleContains('PhoneCall');

        // Use assertions to check that the properties are properly displayed.
    }

    public function testEdit(): void
    {
        $this->markTestIncomplete();
        $fixture = new PhoneCall();
        $fixture->setDepartment('Value');
        $fixture->setDescription('Value');
        $fixture->setCreatedAt('Value');
        $fixture->setModifiedAt('Value');
        $fixture->setDeletedAt('Value');
        $fixture->setReactivatedAt('Value');
        $fixture->setState('Value');
        $fixture->setRemark('Value');
        $fixture->setClient('Value');
        $fixture->setUserName('Value');

        $this->manager->persist($fixture);
        $this->manager->flush();

        $this->client->request('GET', sprintf('%s%s/edit', $this->path, $fixture->getId()));

        $this->client->submitForm('Update', [
            'phone_call[department]' => 'Something New',
            'phone_call[description]' => 'Something New',
            'phone_call[createdAt]' => 'Something New',
            'phone_call[modifiedAt]' => 'Something New',
            'phone_call[deletedAt]' => 'Something New',
            'phone_call[reactivatedAt]' => 'Something New',
            'phone_call[state]' => 'Something New',
            'phone_call[remark]' => 'Something New',
            'phone_call[client]' => 'Something New',
            'phone_call[userName]' => 'Something New',
        ]);

        self::assertResponseRedirects('/phone/call/');

        $fixture = $this->repository->findAll();

        self::assertSame('Something New', $fixture[0]->getDepartment());
        self::assertSame('Something New', $fixture[0]->getDescription());
        self::assertSame('Something New', $fixture[0]->getCreatedAt());
        self::assertSame('Something New', $fixture[0]->getModifiedAt());
        self::assertSame('Something New', $fixture[0]->getDeletedAt());
        self::assertSame('Something New', $fixture[0]->getReactivatedAt());
        self::assertSame('Something New', $fixture[0]->getState());
        self::assertSame('Something New', $fixture[0]->getRemark());
        self::assertSame('Something New', $fixture[0]->getClient());
        self::assertSame('Something New', $fixture[0]->getUserName());
    }

    public function testRemove(): void
    {
        $this->markTestIncomplete();
        $fixture = new PhoneCall();
        $fixture->setDepartment('Value');
        $fixture->setDescription('Value');
        $fixture->setCreatedAt('Value');
        $fixture->setModifiedAt('Value');
        $fixture->setDeletedAt('Value');
        $fixture->setReactivatedAt('Value');
        $fixture->setState('Value');
        $fixture->setRemark('Value');
        $fixture->setClient('Value');
        $fixture->setUserName('Value');

        $this->manager->remove($fixture);
        $this->manager->flush();

        $this->client->request('GET', sprintf('%s%s', $this->path, $fixture->getId()));
        $this->client->submitForm('Delete');

        self::assertResponseRedirects('/phone/call/');
        self::assertSame(0, $this->repository->count([]));
    }
}
