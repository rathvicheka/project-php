<?php include('header.php'); ?>
<main class="sport">
    <section class="trending">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="content-trending">
                        <div class="content-left">
                            ENTERTAINMENT NEWS
                        </div>   
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="container">
            <div class="row">
                <?php getNewsByNewType('Entertainment','national') ?>
            </div>
            <div class="row pagination">
                <div class="col-12">
                      
                </div>
            </div>
        </div>
    </section>
</main>
<?php include('footer.php'); ?>