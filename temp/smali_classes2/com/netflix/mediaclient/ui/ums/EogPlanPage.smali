.class public Lcom/netflix/mediaclient/ui/ums/EogPlanPage;
.super Ljava/lang/Object;
.source "EogPlanPage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "eog_plan_page"


# instance fields
.field private mAccount:Landroid/widget/TextView;

.field private mActive_plan_drawable:Landroid/graphics/drawable/Drawable;

.field private mContinue:Landroid/widget/TextView;

.field private mDisclaimer:Landroid/widget/TextView;

.field private mHdCheckBox:Landroid/widget/CheckBox;

.field private mHdName:Landroid/widget/TextView;

.field private mHdPlanHeader:Landroid/widget/LinearLayout;

.field private mHdValue:Landroid/widget/TextView;

.field private mInactive_plan_drawable:Landroid/graphics/drawable/Drawable;

.field private mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

.field private mSdCheckBox:Landroid/widget/CheckBox;

.field private mSdName:Landroid/widget/TextView;

.field private mSdPlanHeader:Landroid/widget/LinearLayout;

.field private mSdValue:Landroid/widget/TextView;

.field private mSelect:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mUhdCheckBox:Landroid/widget/CheckBox;

.field private mUhdName:Landroid/widget/TextView;

.field private mUhdPlanHeader:Landroid/widget/LinearLayout;

.field private mUhdValue:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001b4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mTitle:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001b5

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSelect:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001b8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdName:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001b9

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdValue:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001bc

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdName:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001bd

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdValue:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001c0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdName:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001c1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdValue:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001c2

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mAccount:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001c4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mContinue:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001c5

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mDisclaimer:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001b7

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdCheckBox:Landroid/widget/CheckBox;

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001bb

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdCheckBox:Landroid/widget/CheckBox;

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001bf

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdCheckBox:Landroid/widget/CheckBox;

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001b6

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdPlanHeader:Landroid/widget/LinearLayout;

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001ba

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdPlanHeader:Landroid/widget/LinearLayout;

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001be

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdPlanHeader:Landroid/widget/LinearLayout;

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0200bd

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mInactive_plan_drawable:Landroid/graphics/drawable/Drawable;

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0200bc

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mActive_plan_drawable:Landroid/graphics/drawable/Drawable;

    .line 83
    return-void
.end method

.method private logPlanChangeEventByUser(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    .line 208
    if-nez v0, :cond_1

    .line 209
    const-string/jumbo v0, "eog_plan_page"

    const-string/jumbo v1, "skip cl logging for plan change - eogAlert null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 227
    :goto_1
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->eogPlanSelector:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v2, v1, v3}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportChangeValueActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 239
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v2, v3, v1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportChangeValueActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :pswitch_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanPlanId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 218
    :pswitch_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanPlanId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 221
    :pswitch_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanPlanId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setPlanSelectionUi(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 174
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->setPlanSelectionUiToDefault()V

    .line 175
    packed-switch p1, :pswitch_data_0

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->setCurrentPlanIndex(I)V

    .line 196
    return-void

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdPlanHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mActive_plan_drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdPlanHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mActive_plan_drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdPlanHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mActive_plan_drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setPlanSelectionUiToDefault()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdPlanHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mInactive_plan_drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdPlanHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mInactive_plan_drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdPlanHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mInactive_plan_drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 204
    return-void
.end method


# virtual methods
.method public initUi()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->canProceed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSelect:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->isPlanOnlyCell(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->body()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mSdValue:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mHdValue:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mUhdValue:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getCurrentPlanIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->setPlanSelectionUi(I)V

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mAccount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->buildAccountString(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mAccount:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mContinue:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->continueBtnText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mDisclaimer:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->disclaimerText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 92
    :cond_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->selectPlanText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public performAction(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 117
    if-nez p1, :cond_0

    .line 118
    const-string/jumbo v1, "eog_plan_page"

    const-string/jumbo v2, "EogPlanPage:: null view? This should never happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return v0

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 134
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :pswitch_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->recordPlanSelection()V

    .line 125
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->shouldBlockUser(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createStartIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->finish()V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x7f1001c3
        :pswitch_0
    .end packed-switch
.end method

.method public performPlanSelection(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 140
    if-nez p1, :cond_0

    .line 141
    const-string/jumbo v1, "eog_plan_page"

    const-string/jumbo v2, "EogPlanPage:: null view? This should never happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return v0

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 168
    goto :goto_0

    .line 148
    :pswitch_1
    const-string/jumbo v2, "eog_plan_page"

    const-string/jumbo v3, "Clicked on SD plan"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->setPlanSelectionUi(I)V

    .line 150
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->logPlanChangeEventByUser(I)V

    goto :goto_0

    .line 154
    :pswitch_2
    const-string/jumbo v1, "eog_plan_page"

    const-string/jumbo v2, "Clicked on HD plan"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->setPlanSelectionUi(I)V

    .line 156
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->logPlanChangeEventByUser(I)V

    goto :goto_0

    .line 160
    :pswitch_3
    const-string/jumbo v1, "eog_plan_page"

    const-string/jumbo v2, "Clicked on UHD plan"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->setPlanSelectionUi(I)V

    .line 162
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/ums/EogPlanPage;->logPlanChangeEventByUser(I)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x7f1001b6
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
