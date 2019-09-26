<?php

use yii\helpers\Html;
use yii\widgets\ListView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel app\models\MovieSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Movies';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="movie-index">

    <?php Pjax::begin(); ?>

    <div class="row">
        <div class="col-sm-4">
            <div style="font-size:150%; ">
            <?= Html::encode($this->title) ?>
            </div>
        </div>
        <div class="col-sm-4">
        </div>
        <div class="col-sm-4">
            <?= $this->render('_search', ['model' => $searchModel]); ?>
        </div>
    </div>

    <?= ListView::widget([
        'dataProvider' => $dataProvider,
        'itemOptions' => ['class' => 'col-sm-4 text-center'],
        'itemView' => function ($model, $key, $index, $widget) {
            return 
            Html::img(\yii\helpers\Url::base(true).$model->cover, [
                'style' => 'height:250px; width:200px;',
                'class' => "img-thumbnail"
            ]).
            "<div class='title-movie'>".
            Html::a(Html::encode($model->title), [
                'detail', 'id' => $model->id
            ]).
            "</div>";
        },
        'layout' => "
            {summary}
            <div class='row'>
            {items}
            </div>
            {pager}",
    ]) ?>

    <?php Pjax::end(); ?>

</div>

<?php
$this->registerCss("
ul.pagination{
    display: flex;
    justify-content: center;
}

.title-movie{
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    height:35px;
}
");