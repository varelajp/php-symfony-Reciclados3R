<?php

namespace App\Form;

use App\Config\Department;
use App\Config\State;
// use Doctrine\DBAL\Types\Department
// use Doctrine\DBAL\Types\State
use App\Entity\PhoneCall;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\EnumType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\FormEvent;
use Symfony\Component\Form\FormEvents;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;

class PhoneCallType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('userName', HiddenType::class, ['mapped' => false])
            // ->add('userName', null, ['row_attr' => ['class' => 'd-none']])
            // ->add('department')
            ->add('department', EnumType::class, [
                'class' => Department::class,
                'disabled' => $options['is_edit']
            ])
            // ->add('description')
            ->add('description', null, ['disabled' => $options['is_owner']])
            // ->add('createdAt')
            // ->add('modifiedAt')
            // ->add('deletedAt')
            // ->add('reactivatedAt')
            // ->add('state')
            ->add('state', EnumType::class, [
                'class' => State::class,
            ])
            // ->add('state', EnumType::class, ['class' => State::class])
            ->add('client', null, ['disabled' => $options['is_edit']])
            ->add('remark')
            ->addEventListener(
                FormEvents::PRE_SET_DATA,
                [$this, 'onPreSetData']
            );
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => PhoneCall::class,
            'is_edit' => false,
            'is_owner' => false,
            'is_new' => false,
        ]);
    }

    public function onPreSetData(FormEvent $event): void
    {
        $form = $event->getForm();

        if ($form->getConfig()->getOptions()['is_new']) {
            $form->add(
                'state',
                EnumType::class,
                ['class' => State::class, 'row_attr' => ['class' => 'd-none']]
            );
            $form->add('remark', HiddenType::class);
        }
    }
}
