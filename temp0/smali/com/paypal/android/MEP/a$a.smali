.class final Lcom/paypal/android/MEP/a$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paypal/android/MEP/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/paypal/android/MEP/a$b;


# direct methods
.method public constructor <init>(Lcom/paypal/android/MEP/a;Lcom/paypal/android/MEP/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/paypal/android/MEP/a$a;->a:Lcom/paypal/android/MEP/a$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/MEP/a$a;->a:Lcom/paypal/android/MEP/a$b;

    invoke-interface {v0}, Lcom/paypal/android/MEP/a$b;->l()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
