<?php

namespace App\Entity;

use App\Config\Department;
use App\Config\State;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

/**
 * PhoneCall
 *
 * @ORM\Table(name="phone_call", indexes={@ORM\Index(name="fk_phone_call_client_id", columns={"client_id"}), @ORM\Index(name="fk_phone_call_user_user_name", columns={"user_name"})})
 * @ORM\Entity
 * @ORM\HasLifecycleCallbacks
 */
class PhoneCall
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var Department
     *
     * @ORM\Column(name="department", enumType=Department::class, nullable=false)
     */
    private $department;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="text", length=65535, nullable=false)
     */
    private $description;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="created_at", type="datetime", nullable=false, options={"default": "CURRENT_TIMESTAMP"})
     */
    private $createdAt/* = 'CURRENT_TIMESTAMP'*/;

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="modified_at", type="datetime", nullable=true)
     */
    private $modifiedAt;

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="deleted_at", type="datetime", nullable=true)
     */
    private $deletedAt;

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="reactivated_at", type="datetime", nullable=true)
     */
    private $reactivatedAt;

    /**
     * @var State
     *
     * @ORM\Column(name="state", enumType=State::class, nullable=false, options={"default"="pending"})
     */
    private $state/* = 'pending'*/;

    /**
     * @var string|null
     *
     * @ORM\Column(name="remark", type="text", length=65535, nullable=true)
     */
    private $remark;

    /**
     * @var \Client
     *
     * @ORM\ManyToOne(targetEntity="Client")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="client_id", referencedColumnName="id")
     * })
     */
    private $client;

    /**
     * @var \User
     *
     * @ORM\ManyToOne(targetEntity="User")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="user_name", referencedColumnName="user_name")
     * })
     */
    private $userName;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDepartment(): null|string|Department
    {
        return $this->department;
    }

    public function setDepartment(Department $department): static
    {
        $this->department = $department;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): static
    {
        $this->description = $description;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTimeInterface $createdAt): static
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    public function getModifiedAt(): ?\DateTimeInterface
    {
        return $this->modifiedAt;
    }

    public function setModifiedAt(?\DateTimeInterface $modifiedAt): static
    {
        $this->modifiedAt = $modifiedAt;

        return $this;
    }

    public function getDeletedAt(): ?\DateTimeInterface
    {
        return $this->deletedAt;
    }

    public function setDeletedAt(?\DateTimeInterface $deletedAt): static
    {
        $this->deletedAt = $deletedAt;

        return $this;
    }

    public function getReactivatedAt(): ?\DateTimeInterface
    {
        return $this->reactivatedAt;
    }

    public function setReactivatedAt(?\DateTimeInterface $reactivatedAt): static
    {
        $this->reactivatedAt = $reactivatedAt;

        return $this;
    }

    public function getState(): null|string|State
    {
        return $this->state;
    }

    public function setState(State $state): static
    {
        $this->state = $state;

        return $this;
    }

    public function getRemark(): ?string
    {
        return $this->remark;
    }

    public function setRemark(?string $remark): static
    {
        $this->remark = $remark;

        return $this;
    }

    public function getClient(): ?Client
    {
        return $this->client;
    }

    public function setClient(?Client $client): static
    {
        $this->client = $client;

        return $this;
    }

    public function getUserName(): ?User
    {
        return $this->userName;
    }

    public function setUserName(?User $userName): static
    {
        $this->userName = $userName;

        return $this;
    }

    public function __toString()
    {
        return $this->state->value;
    }

    /**
     * @ORM\PrePersist
     */
    public function onPrePersistSetCreatedAt()
    {
        $this->createdAt = new \DateTime();
    }
}
