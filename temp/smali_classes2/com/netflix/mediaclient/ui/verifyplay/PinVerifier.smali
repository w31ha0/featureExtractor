.class public Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;
.super Ljava/lang/Object;
.source "PinVerifier.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/app/ApplicationStateListener;


# static fields
.field private static final DEFAULT_PIN_SESSION_TIMEOUT_MS:J = 0x1b7740L

.field public static final DIALOG_TIMEOUT_IN_BACKGROUND:J = 0x2bf20L

.field private static final FORCE_PREVIEW_CHECK:Z = false

.field public static final PIN_VERIFY_REQUIRED:Z = true

.field public static final TAG:Ljava/lang/String; = "nf_pin"

.field private static final TAG_SESSION:Ljava/lang/String; = "nf_pin_session"

.field private static sAppInBackground:Z

.field private static sBackgroundTime:J

.field private static sPinDialog:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

.field private static sPinSessionExpiryTime:J

.field private static sPinVerifyInstance:Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinDialog:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinVerifyInstance:Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinVerifyInstance:Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    return-object v0
.end method

.method public static isPinSessionActive()Z
    .locals 4

    .prologue
    .line 132
    sget-wide v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinSessionExpiryTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lastUserInteractionTime(J)V
    .locals 0

    .prologue
    .line 139
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->registerUserInteractionEvent(J)V

    .line 140
    return-void
.end method

.method private static registerUserInteractionEvent(J)V
    .locals 6

    .prologue
    .line 178
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->isPinSessionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string/jumbo v0, "nf_pin_session"

    const-string/jumbo v1, "isActive: %b lastInteractionTime:%d - registerUserInteractionEvent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 180
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->isPinSessionActive()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 179
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    .line 183
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->updatePinSessionExpiryTime(J)V

    .line 185
    :cond_0
    return-void
.end method

.method private static setPinSessionToInactive()V
    .locals 2

    .prologue
    .line 188
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinSessionExpiryTime:J

    .line 189
    return-void
.end method

.method private shouldHandleNewRequest(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    .line 95
    const-string/jumbo v2, "nf_pin"

    const-string/jumbo v3, "pinDialog!=null loc:%s, visible:%b, hidden:%b"

    new-array v4, v7, [Ljava/lang/Object;

    .line 96
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    sget-object v5, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinDialog:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->isVisible()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    sget-object v5, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinDialog:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->isHidden()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    .line 95
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v2, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinDialog:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinDialog:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    const-string/jumbo v2, "nf_pin"

    const-string/jumbo v3, "Error.. pinDialog!=null but not visible - killing.. loc:%s, visible:%b, hidden:%b"

    new-array v4, v7, [Ljava/lang/Object;

    .line 100
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinDialog:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->isVisible()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinDialog:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->isHidden()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v6

    .line 99
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->dismissPinVerification()V

    .line 121
    :goto_0
    return v0

    .line 108
    :cond_0
    sget-object v2, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->MDX:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getInvokeLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 112
    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->dismissPinVerification()V

    goto :goto_0
.end method

.method private shouldVerifyPin(ZZ)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    const-string/jumbo v2, "nf_pin_session"

    const-string/jumbo v3, "Active:%b isPinProtected:%b isPreviewProtected: %b - shouldVerifyPin"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 144
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->isPinSessionActive()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 143
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-eqz p2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    if-eqz p1, :cond_2

    .line 151
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->isPinSessionActive()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 154
    goto :goto_0
.end method

.method private static updatePinSessionExpiryTime(J)V
    .locals 6

    .prologue
    .line 192
    sget-wide v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinSessionExpiryTime:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 193
    const-string/jumbo v0, "nf_pin_session"

    const-string/jumbo v1, "isActive: %b, current:%d, newExpiry:%d - updatePinSessionExpiryTime"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 194
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->isPinSessionActive()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 193
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sput-wide p0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinSessionExpiryTime:J

    .line 198
    :cond_0
    return-void
.end method


# virtual methods
.method public clearState()V
    .locals 0

    .prologue
    .line 128
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->setPinSessionToInactive()V

    .line 129
    return-void
.end method

.method public dismissPinVerification()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 201
    const-string/jumbo v2, "nf_pin"

    const-string/jumbo v3, "dismissPinVerification appInBackground:%b, pinDialogValid:%b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-boolean v5, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sAppInBackground:Z

    .line 202
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    sget-object v5, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinDialog:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    if-eqz v5, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    .line 201
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinDialog:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    if-eqz v0, :cond_1

    .line 206
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinDialog:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->dismissDialog()V

    .line 208
    :cond_1
    return-void
.end method

.method public onBackground(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 2

    .prologue
    .line 217
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "app in background"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sBackgroundTime:J

    .line 219
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sAppInBackground:Z

    .line 220
    return-void
.end method

.method public onFocusGain(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public onFocusLost(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public onForeground(Lcom/netflix/mediaclient/android/app/UserInputManager;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 224
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sAppInBackground:Z

    .line 225
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "app in foreground "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method public onUiGone(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public onUiStarted(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method protected pinDialogDismissed()V
    .locals 2

    .prologue
    .line 211
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "pinDialogDismissed mPinDialog=null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x0

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinDialog:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    .line 213
    return-void
.end method

.method public registerPinVerifyEvent()V
    .locals 5

    .prologue
    .line 173
    const-string/jumbo v0, "nf_pin_session"

    const-string/jumbo v1, "isActive: %b to: true - registerPinVerifyEvent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->isPinSessionActive()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->updatePinSessionExpiryTime(J)V

    .line 175
    return-void
.end method

.method public registerPlayEvent(ZZ)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    .line 163
    if-nez p2, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->isPinSessionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x1b7740

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->updatePinSessionExpiryTime(J)V

    move v0, v1

    .line 168
    :goto_0
    const-string/jumbo v3, "nf_pin_session"

    const-string/jumbo v4, "isActive: %b, wasPinProtectedPlayback: %b, wasPreviewProtectedPlayback: %b, extendSession ? %b- registerPlayStopEvent"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 169
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->isPinSessionActive()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    .line 168
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected toDismissDialog()Z
    .locals 4

    .prologue
    .line 229
    sget-boolean v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sAppInBackground:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sBackgroundTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public verify(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V
    .locals 3

    .prologue
    .line 42
    .line 56
    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;->getAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPreviewProtected()Z

    move-result v0

    .line 57
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->shouldVerifyPin(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    invoke-static {p1, p3, p4}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->notifyCallerPinVerified(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V

    .line 85
    :cond_0
    :goto_1
    return-void

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinDialog:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    if-eqz v0, :cond_3

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->shouldHandleNewRequest(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    .line 73
    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->wasInBackground()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "skip pin dialog - was in background"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->getUserInput()Lcom/netflix/mediaclient/android/app/UserInputManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->addListener(Lcom/netflix/mediaclient/android/app/ApplicationStateListener;)Z

    .line 80
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->createPinDialog(Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;)Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinDialog:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    .line 81
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinDialog:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v0, p4}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->setPinVerifierCallback(Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V

    .line 82
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->sPinDialog:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "frag_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1
.end method
