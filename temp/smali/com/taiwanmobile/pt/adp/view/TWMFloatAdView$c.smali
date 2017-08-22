.class final Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;
.super Ljava/lang/Object;
.source "TWMFloatAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;->b:Ljava/lang/String;

    .line 231
    iput-object p3, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;->c:Ljava/lang/String;

    .line 232
    iput-object p4, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;->d:Ljava/lang/String;

    .line 233
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method
