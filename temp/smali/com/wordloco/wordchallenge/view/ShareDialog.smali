.class public Lcom/wordloco/wordchallenge/view/ShareDialog;
.super Lcom/google/example/games/basegameutils/BaseGameActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Lcom/google/android/gms/common/api/GoogleApiClient;

.field d:Lcom/google/android/gms/plus/PlusOneButton;

.field private e:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->a:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/wordloco/wordchallenge/view/ShareDialog;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/wordloco/wordchallenge/view/ShareDialog;)Lcom/facebook/UiLifecycleHelper;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->e:Lcom/facebook/UiLifecycleHelper;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0, p1, p2, p3}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 289
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->e:Lcom/facebook/UiLifecycleHelper;

    .line 290
    new-instance v1, Lcom/wordloco/wordchallenge/view/an;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/an;-><init>(Lcom/wordloco/wordchallenge/view/ShareDialog;)V

    .line 289
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V

    .line 305
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 210
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->b:Ljava/lang/String;

    const-string v1, "gift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->finish()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->b:Ljava/lang/String;

    const-string v1, "plusbutton"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->f(Z)V

    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wordloco/wordchallenge/view/Game;

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 220
    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->startActivity(Landroid/content/Intent;)V

    .line 221
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->finish()V

    .line 230
    :cond_1
    :goto_0
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->finish()V

    .line 233
    :cond_2
    return-void

    .line 223
    :cond_3
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 224
    const v1, 0x7f09009e

    .line 225
    const/4 v2, 0x0

    .line 223
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const v7, 0x7f06002c

    .line 54
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    :goto_0
    invoke-super {p0, p1}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance v0, Lcom/facebook/UiLifecycleHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->e:Lcom/facebook/UiLifecycleHelper;

    .line 60
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->e:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "textToShare"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "source"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->b:Ljava/lang/String;

    .line 64
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->setContentView(I)V

    .line 68
    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 71
    sget-object v2, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 72
    const v0, 0x7f0600b3

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 74
    new-instance v2, Lcom/google/android/gms/plus/PlusOneButton;

    invoke-direct {v2, p0}, Lcom/google/android/gms/plus/PlusOneButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->d:Lcom/google/android/gms/plus/PlusOneButton;

    .line 76
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    const/4 v3, -0x2

    .line 78
    const/4 v4, -0x2

    .line 76
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x19

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 84
    iget-object v3, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->d:Lcom/google/android/gms/plus/PlusOneButton;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/plus/PlusOneButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->d:Lcom/google/android/gms/plus/PlusOneButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/plus/PlusOneButton;->setSize(I)V

    .line 86
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->d:Lcom/google/android/gms/plus/PlusOneButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/plus/PlusOneButton;->setAnnotation(I)V

    .line 87
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->d:Lcom/google/android/gms/plus/PlusOneButton;

    const v3, 0x7f060025

    invoke-virtual {v2, v3}, Lcom/google/android/gms/plus/PlusOneButton;->setId(I)V

    .line 89
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->d:Lcom/google/android/gms/plus/PlusOneButton;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 91
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/PlusOneButton;

    .line 94
    new-instance v2, Lcom/wordloco/wordchallenge/view/ak;

    invoke-direct {v2, p0}, Lcom/wordloco/wordchallenge/view/ak;-><init>(Lcom/wordloco/wordchallenge/view/ShareDialog;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/plus/PlusOneButton;->setOnPlusOneClickListener(Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    :goto_1
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->b:Ljava/lang/String;

    const-string v2, "gift"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const v0, 0x7f0600b4

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0, v7}, Lcom/wordloco/wordchallenge/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 125
    const v2, 0x7f09009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->b:Ljava/lang/String;

    const-string v1, "plusbutton"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    const v0, 0x7f0600b4

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 129
    const v2, 0x7f09009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0, v7}, Lcom/wordloco/wordchallenge/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 131
    const v2, 0x7f0900a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v0, 0x7f060073

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 133
    const v0, 0x7f060074

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_1
    const v0, 0x7f060074

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/wordloco/wordchallenge/view/al;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/al;-><init>(Lcom/wordloco/wordchallenge/view/ShareDialog;)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v0, 0x7f060073

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 166
    new-instance v1, Lcom/wordloco/wordchallenge/view/am;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/am;-><init>(Lcom/wordloco/wordchallenge/view/ShareDialog;)V

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-virtual {p0, v7}, Lcom/wordloco/wordchallenge/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-static {v0}, Lcom/a/a/h;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 55
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-super {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onDestroy()V

    .line 40
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->e:Lcom/facebook/UiLifecycleHelper;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->e:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 43
    :cond_0
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->d:Lcom/google/android/gms/plus/PlusOneButton;

    .line 44
    const v0, 0x7f0600b3

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 45
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->setContentView(I)V

    .line 46
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->b:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->c:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 237
    invoke-super {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onResume()V

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->e:Lcom/facebook/UiLifecycleHelper;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ShareDialog;->e:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/PlusOneButton;

    .line 246
    const/4 v2, 0x0

    .line 245
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/plus/PlusOneButton;->initialize(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-static {v0}, Lcom/a/a/h;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSignInFailed()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public onSignInSucceeded()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    .line 257
    :try_start_0
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    const/4 v2, 0x0

    .line 258
    sget-object v3, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    aput-object v3, v1, v2

    .line 257
    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->canPresentShareDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;)Z

    move-result v0

    .line 258
    if-nez v0, :cond_0

    .line 259
    const v0, 0x7f060073

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    invoke-static {v0}, Lcom/a/a/h;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
