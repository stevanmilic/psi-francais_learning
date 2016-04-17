<?php
namespace Entities;
use Doctrine\ORM\Mapping AS ORM;

/**
 * @ORM\Entity
 * @ORM\InheritanceType("JOINED")
 * @ORM\DiscriminatorColumn(name="discr",length=25, type="string")
 */
class user
{
	/**
	 * @ORM\Id
	 * @ORM\Column(type="integer", nullable=false)
	 * @ORM\GeneratedValue(strategy="AUTO")
	 */
	private $user_id;

	/**
	 * @ORM\Column(type="string", length=25, nullable=false)
	 */
	private $username;

	/**
	 * @ORM\Column(type="string", length=25, nullable=false)
	 */
	private $password;

	/**
	 * @ORM\Column(type="string", length=50, nullable=false)
	 */
	private $email;

	public function __construct($email,$username,$password){
		$this->username = $username;
		$this->password = $password;
		$this->email = $email;
	}

	public function getUserId(){
		return $this->user_id;
	}
	
	public function getUsername(){
		return $this->username;
	}

	public function getPassword(){
		return $this->password;
	}

	public function getEmail(){
		return $this->email;
	}

	public function setPassword($password){
		$this->password = $password;
	}
}