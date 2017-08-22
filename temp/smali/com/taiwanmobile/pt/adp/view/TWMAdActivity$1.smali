.class Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$1;
.super Ljava/lang/Object;
.source "TWMAdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$1;->b:Ljava/lang/String;

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;)V

    .line 641
    return-void
.end method
