<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Movie */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Search', 'url' => ['search']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="movie-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="row">
        <div class="col-sm-4 text-center">
            <?= Html::img(\yii\helpers\Url::base(true).$model->cover, [
                'width' => '200',
                'class' => "img-thumbnail"
            ]) ?>
        </div>
        <div class="col-sm-8">
        <?= DetailView::widget([
            'model' => $model,
            'attributes' => [
                'description:ntext',
                'genre',
                'director',
                'rating',
                'duration',
            ],
        ]) ?>
        </div>
    </div>
</div>