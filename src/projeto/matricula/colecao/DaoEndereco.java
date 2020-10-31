package projeto.matricula.colecao;

import java.util.List;
import projeto.matricula.colecao.*;
import org.hibernate.Session;


public class DaoEndereco {
    
	public static void salvarEndereco(Endereco av) {
	
	for(Endereco a : listarEnderecos()) {
		if( av.getNome().equals( a.getNome() ) ) {
			System.err.println("Endereco ja cadastrado");
			return;
		}
	}
	
	inserirEndereco( av );	
	}

	private static void inserirEndereco(Endereco av) {
	Session sessao = ConexaoBD.getSessionFactory().openSession();
	sessao.beginTransaction();
	sessao.save( av );
	sessao.getTransaction().commit();
	sessao.close();
	}
	
	public static void updateEndereco(Endereco a){
	Session s = ConexaoBD.getSessionFactory().openSession();
	s.beginTransaction();
	s.update(a);
	s.getTransaction().commit();
	s.close();
	}
	
	public static List<Endereco> listarEnderecos(){
	Session s = ConexaoBD.getSessionFactory().openSession();
	s.beginTransaction();
	List<Endereco> lista = s.createQuery("FROM Endereco").list();
	s.getTransaction().commit();
	s.close();
	return lista;
	}
	
	public static Endereco localizarEnderecoPorCodigo(int codigo){
	Session s = ConexaoBD.getSessionFactory().openSession();
	s.beginTransaction();
	Endereco lista = (Endereco) s.createQuery("FROM Endereco WHERE codigo = " + codigo).uniqueResult();
	s.getTransaction().commit();
	s.close();
	return lista;
	}
	
	public static Endereco localizarEnderecoPorCep(String cep){
	Session s = ConexaoBD.getSessionFactory().openSession();
	s.beginTransaction();
	Endereco lista = (Endereco) s.createQuery("FROM Endereco WHERE cep = " + cep).uniqueResult();
	s.getTransaction().commit();
	s.close();
	return lista;
	}

}