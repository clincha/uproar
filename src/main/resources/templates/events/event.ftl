<#import "../layout.ftl" as layout>
<#import "../navbar.ftl" as navbar>


<@layout.standardPage; section>
    <#if section = "scripts">
        <script src="/js/script.js"></script>

    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
    <#-- Import your stylesheets here -->
        <link rel="stylesheet" href="/css/style.css">
        <link rel="stylesheet" href="/css/eventheader.css">
    </#if>
    <#if section="content">
    <#-- This is where the main content of the page would go, this section sits inbetween the body tags -->
        <@navbar.navbar></@navbar.navbar><br><br><br><br>

        <section id="page-title">
            <h1> Kent Rugby Presents: the Social</h1>
        </section>

        <section id="main-content">
            <div class="container">
                <article>
                    <h1 class="page-title">About Us</h1>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec varius auctor lacus nec feugiat.
                        Phasellus sit amet ex ipsum. Praesent pharetra
                        tincidunt tempor. Etiam velit eros, dapibus eget porta in, lacinia et magna.
                        Nam eget eros non orci consectetur congue at ac augue. Proin eget arcu in enim feugiat
                        ultricies.
                        Curabitur maximus metus nec metus pretium viverra at et orci. Integer hendrerit ante ut placerat
                        cursus.
                    </p>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quo, soluta minus hic repellendus
                        neque,
                        dolor similique
                        dolorum ad dicta aspernatur facere officia fugit praesentium quas nostrum? Veritatis quaerat
                        consequuntur natus
                    </p>
                    <p>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec varius auctor lacus nec feugiat.
                        Phasellus sit amet ex ipsum. Praesent pharetra
                        tincidunt tempor. Etiam velit eros, dapibus eget porta in, lacinia et magna.
                        Nam eget eros non orci consectetur congue at ac augue. Proin eget arcu in enim feugiat
                        ultricies.
                        Curabitur maximus metus nec metus pretium viverra at et orci. Integer hendrerit ante ut placerat
                        cursus.
                    </p>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quo, soluta minus hic repellendus
                        neque,
                        dolor similique
                        dolorum ad dicta aspernatur facere officia fugit praesentium quas nostrum? Veritatis quaerat
                        consequuntur natus
                    </p>
                    <p>
                </article>

                <aside>
                    <div class="price-box">
                        <h3>Buy Ticket now</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. D</p>
                    </div>

                    <div class="map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2494.754977480543!2d1.061028515762254!3d51.29723297960098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47deca36929a4527%3A0xe17bfa0b0060a838!2sUniversity%20of%20Kent!5e0!3m2!1sen!2suk!4v1573472462343!5m2!1sen!2suk"
                                width="400" height="300" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                    </div>
                </aside>
            </div>
        </section>
    </#if>
</@layout.standardPage>
