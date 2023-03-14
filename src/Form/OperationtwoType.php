<?php

namespace App\Form;

use App\Entity\Operations;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class OperationtwoType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            // ->add('type')
            ->add('montant', NumberType::class,[
                'label'=>false,
                'attr'=>[
                    'placeholder'=>"Montant",
                    'class'=>"md-form",
                ]
            ])
            ->add('motif', TextareaType::class,[
                'label'=>false,
                'attr'=>[
                    'placeholder'=>"Motif",
                    'class'=>"md-form md-textarea",
                ]
            ])
            
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Operations::class,
        ]);
    }
}
