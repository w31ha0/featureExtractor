.class Lvpadn/cs$m;
.super Ljava/lang/Object;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "m"
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;II)V
    .locals 0

    .prologue
    .line 1325
    iput-object p1, p0, Lvpadn/cs$m;->c:Lvpadn/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1326
    iput p2, p0, Lvpadn/cs$m;->b:I

    .line 1327
    iput p3, p0, Lvpadn/cs$m;->a:I

    .line 1328
    return-void
.end method
