.class public Lcom/netflix/mediaclient/ui/survey/SurveyFragment;
.super Landroid/support/v4/app/Fragment;
.source "SurveyFragment.java"


# static fields
.field private static final ANIM_DURATION_MS:I = 0xc8

.field private static final EXTRA_SURVEY:Ljava/lang/String; = "extra_survey"

.field private static final PUSH_SQUISH_RATIO:F = 1.2f


# instance fields
.field private survey:Lcom/netflix/model/survey/Survey;

.field private surveyListener:Lcom/netflix/mediaclient/ui/survey/SurveyListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/survey/SurveyFragment;)Lcom/netflix/mediaclient/ui/survey/SurveyListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->surveyListener:Lcom/netflix/mediaclient/ui/survey/SurveyListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/survey/SurveyFragment;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->startTouchAnimation(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/survey/SurveyFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->isEventInsideView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/survey/SurveyFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->makeSelection(Landroid/view/View;)V

    return-void
.end method

.method public static getInstance(Lcom/netflix/model/survey/Survey;)Lcom/netflix/mediaclient/ui/survey/SurveyFragment;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string/jumbo v2, "extra_survey"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v0
.end method

.method private isEventInsideView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeSelection(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->surveyListener:Lcom/netflix/mediaclient/ui/survey/SurveyListener;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->surveyListener:Lcom/netflix/mediaclient/ui/survey/SurveyListener;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/ui/survey/SurveyListener;->onCompleted(I)V

    .line 159
    :cond_0
    return-void

    .line 149
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 150
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 151
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 152
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 153
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x7f100395
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private startTouchAnimation(Landroid/view/View;Z)V
    .locals 6

    .prologue
    const/16 v5, 0xc8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 128
    if-eqz p2, :cond_0

    const v0, 0x3f99999a    # 1.2f

    .line 129
    :goto_0
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v3, [F

    aput v0, v2, v4

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 130
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v3, [F

    aput v0, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 132
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 133
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 134
    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 135
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 138
    if-eqz p2, :cond_1

    .line 139
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 143
    :goto_1
    return-void

    .line 128
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    goto :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 164
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/survey/SurveyListener;

    if-eqz v0, :cond_0

    .line 165
    check-cast p1, Lcom/netflix/mediaclient/ui/survey/SurveyListener;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->surveyListener:Lcom/netflix/mediaclient/ui/survey/SurveyListener;

    .line 170
    return-void

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must implement SurveyListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    .prologue
    .line 46
    const v2, 0x7f03006d

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 48
    const v2, 0x7f1001e2

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 49
    const v3, 0x7f100075

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 50
    const v4, 0x7f1001e3

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/widget/TextView;

    .line 52
    const v4, 0x7f10039a

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/widget/TextView;

    .line 53
    const v4, 0x7f10039b

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/TextView;

    .line 54
    const v4, 0x7f1001e4

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/widget/TextView;

    .line 56
    const v4, 0x7f100395

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 57
    const v5, 0x7f100396

    invoke-virtual {v14, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 58
    const v6, 0x7f100397

    invoke-virtual {v14, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 59
    const v7, 0x7f100398

    invoke-virtual {v14, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 60
    const v8, 0x7f100399

    invoke-virtual {v14, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v15, "extra_survey"

    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/netflix/model/survey/Survey;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->survey:Lcom/netflix/model/survey/Survey;

    .line 64
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->survey:Lcom/netflix/model/survey/Survey;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->survey:Lcom/netflix/model/survey/Survey;

    invoke-virtual {v13}, Lcom/netflix/model/survey/Survey;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 66
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    move-object v2, v14

    .line 119
    :goto_0
    return-object v2

    .line 69
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->survey:Lcom/netflix/model/survey/Survey;

    invoke-virtual {v13}, Lcom/netflix/model/survey/Survey;->getFirstQuestion()Lcom/netflix/model/survey/SurveyQuestion;

    move-result-object v13

    .line 71
    invoke-virtual {v13}, Lcom/netflix/model/survey/SurveyQuestion;->getHeader()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v13}, Lcom/netflix/model/survey/SurveyQuestion;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v13}, Lcom/netflix/model/survey/SurveyQuestion;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v13}, Lcom/netflix/model/survey/SurveyQuestion;->getDisagreementLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v13}, Lcom/netflix/model/survey/SurveyQuestion;->getAgreementLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v13}, Lcom/netflix/model/survey/SurveyQuestion;->getSkipLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v2, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$1;-><init>(Lcom/netflix/mediaclient/ui/survey/SurveyFragment;)V

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v2, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;-><init>(Lcom/netflix/mediaclient/ui/survey/SurveyFragment;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 118
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/View;

    const/4 v9, 0x0

    aput-object v4, v3, v9

    const/4 v4, 0x1

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v6, v3, v4

    const/4 v4, 0x3

    aput-object v7, v3, v4

    const/4 v4, 0x4

    aput-object v8, v3, v4

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->setOnTouchListeners(Landroid/view/View$OnTouchListener;[Landroid/view/View;)V

    move-object v2, v14

    .line 119
    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->surveyListener:Lcom/netflix/mediaclient/ui/survey/SurveyListener;

    .line 176
    return-void
.end method
