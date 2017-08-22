.class Lc/CompassListener$1;
.super Ljava/lang/Object;
.source "CompassListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/CompassListener;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/CompassListener;


# direct methods
.method constructor <init>(Lc/CompassListener;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lc/CompassListener$1;->a:Lc/CompassListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lc/CompassListener$1;->a:Lc/CompassListener;

    invoke-static {v0}, Lc/CompassListener;->a(Lc/CompassListener;)V

    .line 117
    return-void
.end method
