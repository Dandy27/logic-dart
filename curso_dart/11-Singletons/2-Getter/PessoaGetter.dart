class PessoaGetter {
  static final PessoaGetter _intancia = PessoaGetter._contrutorNomeado();
   String? nome;

  PessoaGetter._contrutorNomeado();

  static PessoaGetter get instancia {
    return _intancia;
  }
}
