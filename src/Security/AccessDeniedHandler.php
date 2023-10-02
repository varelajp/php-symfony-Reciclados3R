<?php

namespace App\Security;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Security\Core\Exception\AccessDeniedException;
use Symfony\Component\Security\Http\Authorization\AccessDeniedHandlerInterface;

class AccessDeniedHandler implements AccessDeniedHandlerInterface
{
  public function handle(Request $request, AccessDeniedException $accessDeniedException): ?Response
  {
    // if (is_null($_SERVER['HTTP_REFERER'])) {
    // }
    return new Response('hola', 403);
  }
}
