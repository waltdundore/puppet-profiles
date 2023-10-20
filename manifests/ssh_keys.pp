class profiles::ssh_keys {
#uses saz-sudo module

  sshkey { 'github.com':
    ensure => present,
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQCSI2g74IDGd7vJRuQ9CnN/vX9egGvrKf/cjMNHYZyz/JbcyTj3sT0T88HMkRUyt4Df8HI3meVoPOvDgZd4UroPWrIWTlr+Ex7QhdpoMxV6EOPTWnQitrutQuEm4bgFlPLwzbz6YyvdBhDjrhNYqCNwD3EyFVsbCQoMs3jiGahXVF4nrT6SzhurjmTyOqfpQKwZMABoAzC2BIo2fYm/MhcUyN35kXGQoTOXb/YOGFu17TtZ0/ull3SBbaImfDVVFbFRfgctz1lNGWes/bafzddu7JMl2tH7WeJgzuc43LJPPVf/icK0QhQfY3Ek8+jRHhPMfYpZ3a8yjrM7KbEp3pfpmi6tjqRhSplKIduwXrUmAeuPUULQ7cIx6kSJOV/5J1ntgFbXnX9EEuKn1Xq47SZdujekdMb6QY0U+9SH6d5PvdLPPTWGd5g4aLjtr4wrNyO6I+sEBQQfnB6hhw2X+4vh4DDyCqbnJKtYvGnFIXfNNjOf2Pii5MGWrWWooFIiTiTELRd7DHr49g5NuzXfxXx9WrVOKv/N6cVf0DmhJFab9/yyxS6e5govKreZk2KfQWWFFUW6DFsci48oMXkP0nRskCa4NPD1KW1QuwRio43CHKZ9FMhMZo0qrt08DOtyHed6TOePH4TSx4NyGYoQhoLtwADiH3ohpB6VKHKZuNgsPQ==',
    name   => 'wdundore',
  }

}
