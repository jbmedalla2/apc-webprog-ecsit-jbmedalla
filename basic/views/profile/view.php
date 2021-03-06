<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use app\models\Trivia;

/* @var $this yii\web\View */
/* @var $model app\models\Profile */
/* @var $triv app\models\Trvia */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Profiles', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
$trivia_model='app\models\Trivia';
?>
<div class="profile-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'Complete_Name',
            'Nickname:ntext',
            'Email_Address:ntext',
            'Home_Address',
            'Gender',
            'Cellphone_Number',
            'Comments:ntext',
        ],
    ]) ?>
	
	 <?= DetailView::widget([
        'model' => $trivia_model,
        'attributes' => [
            'question',
			'answer',
        ],
    ]) ?>

</div>
