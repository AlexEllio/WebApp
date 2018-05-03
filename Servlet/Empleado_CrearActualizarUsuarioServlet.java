package banco.servlet;

import banco.ejb.UsuarioFacade;
import banco.entity.Usuario;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author alex
 */

@WebServlet(name = "Empleado_CrearActualizarUsuarioServlet", urlPatterns = {"/Empleado_CrearActualizarUsuarioServlet"})
public class Empleado_CrearActualizarUsuarioServlet extends HttpServlet {

    @EJB
    private UsuarioFacade usuarioFacade;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre, apellidos, dni, email, id, contrasena, domicilio;
        Integer telefono, numerocuenta;
        Double saldo;
        Short alta;
        Short value = 0;
        Usuario usuario;
        
        nombre = request.getParameter("nombre");
        apellidos = request.getParameter("apellidos");
        dni = request.getParameter("dni");
        contrasena = request.getParameter("contrasena");
        telefono = Integer.parseInt(request.getParameter("telefono"));
        email = request.getParameter("email");
        numerocuenta = Integer.parseInt(request.getParameter("numerocuenta"));
        alta = Short.parseShort(request.getParameter("alta"));
        domicilio = request.getParameter("domicilio");
        id = request.getParameter("id");
        
        
        if ("".equals(id)) { // Crear
            usuario = new Usuario();
            usuario.setSaldo(0.0);
            usuario.setEmpleado(value);
        } else { // Editar
            usuario = this.usuarioFacade.find(new Integer(id));
        }
        
        if(nombre!=null){
            usuario.setNombre(nombre);
        }
        if(apellidos != null){
             usuario.setApellidos(apellidos);
        }
        if(dni != null){
            usuario.setDni(dni);
        }
        if(contrasena != null){
            usuario.setContrasena(contrasena);
        }
        if(telefono != null){
            usuario.setTelefono(telefono);
        }
        if(email != null){
             usuario.setEmail(email);
        }
        if(numerocuenta != null){
            usuario.setCuenta(numerocuenta);
        }
        
        usuario.setEstado(alta);
        
        if(domicilio != null){
            usuario.setDomicilio(domicilio);
        }
        
        if ("".equals(id)) {                  
           this.usuarioFacade.create(usuario);
        } else {
            this.usuarioFacade.edit(usuario);
        }
        
        RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/Empleado_UsuarioServlet");
        rd.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
