.class public Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;
.super Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/internal/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloatAd"
.end annotation


# static fields
.field public static final KEY_FLOAT_TYPE:Ljava/lang/String; = "floatType"


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/internal/AdManager;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/internal/AdManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;-><init>(Lcom/taiwanmobile/pt/adp/view/internal/AdManager;Ljava/lang/String;)V

    .line 153
    return-void
.end method
