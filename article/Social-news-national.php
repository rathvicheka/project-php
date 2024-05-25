<?php include('header.php'); ?>
<main class="sport">
    <section class="trending">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="content-trending">
                        <div class="content-left">
                            SOCIAL NEWS
                        </div>   
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="container">
            <div class="row">
                <?php getNewsByNewType('Social','national') ?>
            </div>
            <div class="row pagination">
                <div class="col-12">
                    <ul>
                        <?php pagination('Social','national'); ?>
                        <li>
                    <a href="?page=1">1</a>
                     </li>
                    <li>
                    <a href="?page=2">2</a>
                    </li>
                    <li>
                    <a href="?page=3">3</a>
                    </li>
                    </ul>   
                </div>
            </div>
        </div>
    </section>
</main>
<?php include('footer.php'); ?>