.class public Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;
.super Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/internal/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Interstitial"
.end annotation


# static fields
.field public static final CONSTANTS_SHOWAD_URL:Ljava/lang/String; = "http://agent.tamedia.com.tw/rmadp/g/ads"

.field public static final KEY_BEEN_NOTICE_PLAY_MARK:Ljava/lang/String; = "kbnpm"

.field public static final KEY_CUSTOM_CLOSE_ENDABLE:Ljava/lang/String; = "kcce"

.field public static final KEY_IS_LOADED:Ljava/lang/String; = "kil"

.field public static final KEY_JSWEBVIEW:Ljava/lang/String; = "kjsw"


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/internal/AdManager;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/internal/AdManager;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;-><init>(Lcom/taiwanmobile/pt/adp/view/internal/AdManager;Ljava/lang/String;)V

    .line 142
    const-string v0, "showAdUrl"

    const-string v1, "http://agent.tamedia.com.tw/rmadp/g/ads"

    invoke-virtual {p0, v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string v0, "kbnpm"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    return-void
.end method
