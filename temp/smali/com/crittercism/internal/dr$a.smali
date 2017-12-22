.class public final Lcom/crittercism/internal/dr$a;
.super Lcom/crittercism/internal/di;


# instance fields
.field private a:Lcom/crittercism/internal/dr;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/dr;)V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    .line 297
    iput-object p1, p0, Lcom/crittercism/internal/dr$a;->a:Lcom/crittercism/internal/dr;

    .line 298
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/crittercism/internal/dr$a;->a:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->b()Z

    .line 303
    return-void
.end method
