.class final Lcom/creativemobi/engine/o;
.super Ljava/lang/Object;
.source "RaceOnlineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/creativemobi/engine/ab;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/ab;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/creativemobi/engine/o;->b:Lcom/creativemobi/engine/ab;

    iput-object p2, p0, Lcom/creativemobi/engine/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/creativemobi/engine/o;->b:Lcom/creativemobi/engine/ab;

    iget-object v0, v0, Lcom/creativemobi/engine/ab;->b:Lcom/creativemobi/engine/bl;

    iget-object v1, p0, Lcom/creativemobi/engine/o;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x7d0

    invoke-interface {v0, v1, v2, v3}, Lcom/creativemobi/engine/bl;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 185
    return-void
.end method
