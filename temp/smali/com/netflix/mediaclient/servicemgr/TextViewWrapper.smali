.class Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;
.super Ljava/lang/Object;
.source "TextViewWrapper.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;


# instance fields
.field protected final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

.field private final keepVisibilityState:Z

.field protected final textView:Landroid/widget/TextView;

.field private final trackId:I

.field private final videoId:Ljava/lang/String;

.field private final videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    .line 35
    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 36
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    .line 37
    iput-object p4, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->videoId:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 39
    iput p6, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->trackId:I

    .line 40
    iput-boolean p7, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->keepVisibilityState:Z

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;)Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->trackId:I

    return v0
.end method


# virtual methods
.method protected hide()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    return-void
.end method

.method protected setAsInList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f020191

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f090135

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method protected setAsNotInList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f020193

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f090135

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method protected show()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    return-void
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 45
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$3;->$SwitchMap$com$netflix$mediaclient$servicemgr$AddToListData$AddToListState:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/AddToListData$AddToListState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->keepVisibilityState:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->addToMyListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;

    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/AddToMyListWrapper;->serviceMan:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isCurrentProfileInstantQueueEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->show()V

    .line 102
    :cond_0
    :goto_1
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f090184

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->setAsInList()V

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$1;-><init>(Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f09009f

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->setAsNotInList()V

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper$2;-><init>(Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/TextViewWrapper;->hide()V

    goto :goto_1

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
