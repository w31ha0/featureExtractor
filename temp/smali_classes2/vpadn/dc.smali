.class public Lvpadn/dc;
.super Ljava/lang/Object;
.source "VideoDownloadTaskFactory.java"


# static fields
.field private static a:Lvpadn/dc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lvpadn/dc;

    invoke-direct {v0}, Lvpadn/dc;-><init>()V

    sput-object v0, Lvpadn/dc;->a:Lvpadn/dc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lvpadn/db$a;Lvpadn/dd;)Lvpadn/db;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lvpadn/dc;->a:Lvpadn/dc;

    invoke-virtual {v0, p0, p1}, Lvpadn/dc;->b(Lvpadn/db$a;Lvpadn/dd;)Lvpadn/db;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected b(Lvpadn/db$a;Lvpadn/dd;)Lvpadn/db;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lvpadn/db;

    invoke-direct {v0, p1, p2}, Lvpadn/db;-><init>(Lvpadn/db$a;Lvpadn/dd;)V

    return-object v0
.end method
