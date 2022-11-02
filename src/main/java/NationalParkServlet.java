import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

    @WebServlet(name = "NationalParkServlet", urlPatterns = "/nps")
    public class NationalParkServlet extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//            String[] nationalParks = {"Grand Canyon National Park", "Yosemite National Park", "Denali National Park", "Arches National Park", "Glacier National Park"};
//            request.setAttribute("nationalParkList", nationalParks);
//            request.getRequestDispatcher("/nps.jsp").forward(request, response);

            Dog d1 = new Dog("Australian Cattle Dog Mix", "Kali", 4);

            request.setAttribute("myDog", d1);

            request.getRequestDispatcher("/nps.jsp").forward(request, response);

        }
    }
