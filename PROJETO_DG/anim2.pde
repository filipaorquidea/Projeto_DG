void carregaranim2() {
  carrega = true;
}

void anim2() {
  if (!carrega) {
    carregaranim2();
  }

}
