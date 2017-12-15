.class final Lcom/creativemobi/DragRacing/billing/u;
.super Ljava/lang/Object;
.source "BillingInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/creativemobi/DragRacing/billing/b;


# direct methods
.method constructor <init>(Lcom/creativemobi/DragRacing/billing/b;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/creativemobi/DragRacing/billing/u;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/u;->a:Lcom/creativemobi/DragRacing/billing/b;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/billing/b;->e(Lcom/creativemobi/DragRacing/billing/b;)V

    .line 321
    return-void
.end method
