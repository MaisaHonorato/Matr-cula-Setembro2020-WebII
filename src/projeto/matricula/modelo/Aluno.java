/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projeto.matricula.modelo;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import javax.persistence.Column;
import projeto.matricula.modelo.Override;
import projeto.matricula.modelo.String;

/**
 *
 * @author Maisa Honorato
 */

@Entity
@Table(name = "tb_aluno")
public class Aluno extends Pessoa implements Serializable {

    @Id
    @GeneratedValue
    @Column(name = "id_aluno", nullable = false)
    private int id;
    @Column(name = "rg_aluno", nullable = false)
    protected String rg;
    @Column(name = "data_nascimento", nullable = false)
    protected String datanasc;
    
   

    
    public Aluno() {
    }

    public Aluno(int id, String rg,  String datanasc, Endereco end) {
        this.id = id;
        this.rg = rg;
        this.datanasc = datanasc;

    }

    public String getRg() {
        return this.rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getDatanasc() {
        return datanasc;
    }

    public void setDatanasc(String datanasc) {
        this.datanasc = datanasc;
    }

    @Override
	public String toString() {
		return id + " - " + rg + " | " + datanasc;
	}

}
