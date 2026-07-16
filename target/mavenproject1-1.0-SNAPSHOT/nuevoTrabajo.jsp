<link rel="stylesheet" href="css/nuevoTrabajo.css">


<div class="form-container">

    <div class="form-card">


        <h1>
            Nuevo Trabajo
        </h1>


        <form action="TrabajoServlet"
              method="post"
              enctype="multipart/form-data">


            <div class="form-group">

                <label>Semana</label>

                <input type="number"
                       name="semana"
                       min="1"
                       max="16"
                       required>

            </div>



            <div class="form-group">

                <label>Título</label>

                <input type="text"
                       name="titulo"
                       placeholder="Ejemplo: Implementación de programas en Java"
                       required>

            </div>



            <div class="form-group">

                <label>Descripción</label>

                <textarea name="descripcion"
                          placeholder="Describe el trabajo realizado..."
                          required></textarea>

            </div>




            <div class="form-group">

                <label>
                    ? Archivo PDF
                </label>

                <input type="file"
                       name="pdf"
                       accept=".pdf">

            </div>




            <div class="form-group">

                <label>
                    ? Archivo ZIP
                </label>

                <input type="file"
                       name="zip"
                       accept=".zip,.rar">

            </div>




            <div class="form-group">

                <label>
                    ? Imagen del trabajo
                </label>

                <input type="file"
                       name="imagen"
                       accept="image/*">

            </div>




            <div class="botones">

                <button type="submit"
                        class="btn btn-guardar">

                    ? Guardar Trabajo

                </button>


                <a href="dashboard.jsp"
                   class="btn btn-volver">

                    ? Volver

                </a>


            </div>


        </form>


    </div>

</div>