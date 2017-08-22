.class final Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;
.super Ljava/lang/Object;
.source "TWMAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;->b:I

    .line 196
    iput-object p3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;->c:Ljava/lang/String;

    .line 197
    iput-object p4, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;->d:Ljava/lang/String;

    .line 198
    iput-object p5, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;->e:Ljava/lang/String;

    .line 199
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 203
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    iget v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;->b:I

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method
