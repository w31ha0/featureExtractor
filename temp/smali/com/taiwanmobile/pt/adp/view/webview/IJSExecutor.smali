.class public interface abstract Lcom/taiwanmobile/pt/adp/view/webview/IJSExecutor;
.super Ljava/lang/Object;
.source "IJSExecutor.java"


# static fields
.field public static final AUDIO_MUTE:I = 0x1

.field public static final AUDIO_NOT_MUTE:I = 0x0

.field public static final JS_FUNCTION_GROUP:Ljava/lang/String; = "android"


# virtual methods
.method public abstract addCalendarEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract audioSwitch(I)V
.end method

.method public abstract captureThumbnail()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract captureThumbnail(Ljava/lang/String;)V
.end method

.method public abstract clickAd()V
.end method

.method public abstract clickInterstitial()V
.end method

.method public abstract closeWebView()V
.end method

.method public abstract countProximityWithinTime(F)V
.end method

.method public abstract disableCloseButton()V
.end method

.method public abstract displayAd()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract extraClickAd(Ljava/lang/String;)V
.end method

.method public abstract flashEffect(FI)V
.end method

.method public abstract flashSwitch(I)V
.end method

.method public abstract floatDisplay(I)V
.end method

.method public abstract getAdFormat()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAdType()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getFloatInfo()Ljava/lang/String;
.end method

.method public abstract getSdkVersion()Ljava/lang/String;
.end method

.method public abstract isOverDecibel(FI)V
.end method

.method public abstract maxDecibel(F)V
.end method

.method public abstract microphoneSwitch(I)V
.end method

.method public abstract noticePlay()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract noticePlay(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract noticePlay(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract openUrl(Ljava/lang/String;)V
.end method

.method public abstract reportVideoProgress(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestProximityWithTimeAndTouches(FI)V
.end method

.method public abstract setRequestedOrientation(I)V
.end method

.method public abstract vibrate(J)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract vibrate2([J)V
.end method
