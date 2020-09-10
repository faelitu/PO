/*
 * João Pedro Giandoso - 2015.1.08.029
 * jpgiandoso@gmail.com  * 
 */
package sudoku;

import ilog.concert.IloException;
import ilog.concert.IloIntVar;
import ilog.concert.IloLinearIntExpr;
import ilog.concert.IloLinearNumExpr;
import ilog.concert.IloNumVar;
import ilog.cplex.IloCplex;
import java.io.IOException;

/**
 *
 * @author rmachado
 */
public class Sudoku {
    public static void main(String[] args) throws IOException, IloException {
        try {
            int n = 9;
            int k = 9;
            
            IloCplex model = new IloCplex();

            //variaveis
            // Ao trocar IloNumvar Por IloInt var trocamos o dominio do problema( ponto flutuante para inteiro )
            IloIntVar x[][] = new IloIntVar[n][k]; //n itens por k containers

            //criando todas variaveis de decisao
            for (int i = 0; i < n; i++) {
                for (int j = 0; j < k; j++) {
                    x[i][j] = model.intVar(0, 1);
                }
            }

            //criando variavel auxiliar y
            IloIntVar y[][] = new IloIntVar[n][k];

            for (int i = 0; i < n; i++) {
                for (int j = 0; j < k; j++) {
                    y[i][j] = model.intVar(0, 1);
                }
            }
            
            //criando variavel auxiliar z
            IloIntVar z[][] = new IloIntVar[n][k];

            for (int i = 0; i < n; i++) {
                for (int j = 0; j < k; j++) {
                    z[i][j] = model.intVar(0, 1);
                }
            }
            
            //criando a funcao objetivo
            IloLinearNumExpr funcObj = model.linearNumExpr();
            for (int i = 0; i < n; i++) {
                for (int j = 0; j < k; j++) {
                    funcObj.addTerm(1, z[i][j]);
                }
            }
            model.addMaximize(funcObj);
            
            //restricoes
            
        } catch (IloException e) {
            System.out.println(e);
        }
    }
}
