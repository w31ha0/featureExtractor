.class public abstract Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "FragmentHostActivity.java"


# static fields
.field public static final PRIMARY_FRAG_TAG:Ljava/lang/String; = "primary"

.field public static final SECONDARY_FRAG_TAG:Ljava/lang/String; = "secondary"

.field static final STANDARD_PRIMARY_FRAG_WEIGHT:F = 0.6f

.field static final STANDARD_SECONDARY_FRAG_WEIGHT:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "FragmentHostActivity"


# instance fields
.field private contentHost:Landroid/widget/LinearLayout;

.field private primaryFrag:Landroid/app/Fragment;

.field private primaryFragContainer:Landroid/view/ViewGroup;

.field private secondaryFrag:Landroid/app/Fragment;

.field private secondaryFragContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected configureLinearLayout()V
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->contentHost:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFragContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 96
    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 97
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFragContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFragContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 101
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 102
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFragContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    :cond_0
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract createPrimaryFrag()Landroid/app/Fragment;
.end method

.method protected createSecondaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContentHost()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->contentHost:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected getContentLayoutId()I
    .locals 1

    .prologue
    .line 120
    const v0, 0x7f030068

    return v0
.end method

.method public getPrimaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFrag:Landroid/app/Fragment;

    return-object v0
.end method

.method protected getPrimaryFragContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFragContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSecondaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    return-object v0
.end method

.method protected getSecondaryFragContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFragContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected hasEmbeddedToolbar()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public isLoadingData()Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/netflix/mediaclient/android/app/LoadingStatus;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/LoadingStatus;->isLoadingData()Z

    move-result v1

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/netflix/mediaclient/android/app/LoadingStatus;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/app/LoadingStatus;->isLoadingData()Z

    move-result v0

    or-int/2addr v0, v1

    .line 157
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f1001de

    const v4, 0x7f1001dd

    const/4 v1, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->getContentLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f1001dc

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->contentHost:Landroid/widget/LinearLayout;

    .line 44
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFragContainer:Landroid/view/ViewGroup;

    .line 47
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->hasEmbeddedToolbar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFragContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 49
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 50
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 56
    :cond_0
    invoke-virtual {p0, v5}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFragContainer:Landroid/view/ViewGroup;

    .line 58
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->setupCastPlayerFrag(Landroid/os/Bundle;)V

    .line 60
    if-nez p1, :cond_4

    .line 61
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->createPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFrag:Landroid/app/Fragment;

    .line 62
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->createSecondaryFrag()Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    .line 70
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 71
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFrag:Landroid/app/Fragment;

    const-string/jumbo v3, "primary"

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 72
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    const-string/jumbo v3, "secondary"

    invoke-virtual {v0, v5, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 75
    :cond_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->contentHost:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->configureLinearLayout()V

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFragContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 87
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFragContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    if-nez v0, :cond_5

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 89
    :cond_3
    return-void

    .line 78
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "primary"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFrag:Landroid/app/Fragment;

    .line 79
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "secondary"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    goto :goto_0

    :cond_5
    move v0, v1

    .line 87
    goto :goto_1
.end method

.method public requestExternalStoragePermission()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 177
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string/jumbo v0, "FragmentHostActivity"

    const-string/jumbo v1, "requestExternalStoragePermission requesting permission."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-static {p0, v0, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string/jumbo v0, "FragmentHostActivity"

    const-string/jumbo v1, "requestExternalStoragePermission already have permission."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFrag:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/netflix/mediaclient/android/app/LoadingStatus;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/android/app/LoadingStatus;->setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->secondaryFrag:Landroid/app/Fragment;

    check-cast v0, Lcom/netflix/mediaclient/android/app/LoadingStatus;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/android/app/LoadingStatus;->setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V

    .line 174
    :cond_1
    return-void
.end method

.method protected setPrimaryFrag(Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->primaryFrag:Landroid/app/Fragment;

    .line 133
    return-void
.end method
