.class public final Lcom/paypal/android/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/MEP/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/paypal/android/a/b$a;
    }
.end annotation


# static fields
.field protected static a:Lcom/paypal/android/c/a;

.field protected static b:Lcom/paypal/android/c/a;

.field private static k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Lcom/paypal/android/a/b$a;

.field private static m:[B

.field private static n:[B

.field private static o:[B

.field private static p:[Ljava/lang/String;

.field private static q:Ljava/lang/String;


# instance fields
.field private c:Lorg/apache/http/client/methods/HttpPost;

.field private d:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private final j:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/paypal/android/a/i;

    invoke-direct {v0}, Lcom/paypal/android/a/i;-><init>()V

    sput-object v0, Lcom/paypal/android/a/b;->a:Lcom/paypal/android/c/a;

    new-instance v0, Lcom/paypal/android/a/j;

    invoke-direct {v0}, Lcom/paypal/android/a/j;-><init>()V

    sput-object v0, Lcom/paypal/android/a/b;->b:Lcom/paypal/android/c/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/paypal/android/a/b;->k:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/a/b;->l:Lcom/paypal/android/a/b$a;

    const/16 v0, 0x377

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/paypal/android/a/b;->m:[B

    const/16 v0, 0x26e

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/paypal/android/a/b;->n:[B

    const/16 v0, 0x27c

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/paypal/android/a/b;->o:[B

    const/16 v0, 0x34

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "27"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "30"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "31"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "32"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "33"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "34"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "36"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "39"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "41"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "43"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "44"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "45"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "46"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "47"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "48"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "49"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "52"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "54"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "55"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "56"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "58"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "60"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "61"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "64"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "65"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "66"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "81"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "82"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "86"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "90"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "91"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "352"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "353"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "354"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "356"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "357"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "358"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "370"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "372"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "377"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "386"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "420"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "421"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "506"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "593"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "598"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "852"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "886"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "972"

    aput-object v2, v0, v1

    sput-object v0, Lcom/paypal/android/a/b;->p:[Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/paypal/android/a/b;->q:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x30t
        -0x7et
        0x3t
        0x73t
        0x30t
        -0x7et
        0x2t
        0x5bt
        0x2t
        0x4t
        0x4dt
        0x7at
        -0x42t
        0x5at
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x30t
        0x7et
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x6t
        0x13t
        0x2t
        0x55t
        0x53t
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x8t
        0x13t
        0x2t
        0x43t
        0x41t
        0x31t
        0x11t
        0x30t
        0xft
        0x6t
        0x3t
        0x55t
        0x4t
        0x7t
        0x13t
        0x8t
        0x53t
        0x61t
        0x6et
        0x20t
        0x4at
        0x6ft
        0x73t
        0x65t
        0x31t
        0x15t
        0x30t
        0x13t
        0x6t
        0x3t
        0x55t
        0x4t
        0xat
        0x13t
        0xct
        0x50t
        0x61t
        0x79t
        0x50t
        0x61t
        0x6ct
        0x2ct
        0x20t
        0x49t
        0x6et
        0x63t
        0x2et
        0x31t
        0x14t
        0x30t
        0x12t
        0x6t
        0x3t
        0x55t
        0x4t
        0xbt
        0xct
        0xbt
        0x73t
        0x74t
        0x61t
        0x67t
        0x65t
        0x5ft
        0x63t
        0x65t
        0x72t
        0x74t
        0x73t
        0x31t
        0x22t
        0x30t
        0x20t
        0x6t
        0x3t
        0x55t
        0x4t
        0x3t
        0xct
        0x19t
        0x73t
        0x74t
        0x61t
        0x67t
        0x65t
        0x5ft
        0x6dt
        0x70t
        0x6ct
        0x5ft
        0x65t
        0x6et
        0x63t
        0x72t
        0x79t
        0x70t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x5ft
        0x63t
        0x65t
        0x72t
        0x74t
        0x30t
        0x1et
        0x17t
        0xdt
        0x31t
        0x31t
        0x30t
        0x33t
        0x31t
        0x32t
        0x30t
        0x30t
        0x32t
        0x39t
        0x31t
        0x34t
        0x5at
        0x17t
        0xdt
        0x33t
        0x36t
        0x30t
        0x33t
        0x30t
        0x35t
        0x30t
        0x30t
        0x32t
        0x39t
        0x31t
        0x34t
        0x5at
        0x30t
        0x7et
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x6t
        0x13t
        0x2t
        0x55t
        0x53t
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x8t
        0x13t
        0x2t
        0x43t
        0x41t
        0x31t
        0x11t
        0x30t
        0xft
        0x6t
        0x3t
        0x55t
        0x4t
        0x7t
        0x13t
        0x8t
        0x53t
        0x61t
        0x6et
        0x20t
        0x4at
        0x6ft
        0x73t
        0x65t
        0x31t
        0x15t
        0x30t
        0x13t
        0x6t
        0x3t
        0x55t
        0x4t
        0xat
        0x13t
        0xct
        0x50t
        0x61t
        0x79t
        0x50t
        0x61t
        0x6ct
        0x2ct
        0x20t
        0x49t
        0x6et
        0x63t
        0x2et
        0x31t
        0x14t
        0x30t
        0x12t
        0x6t
        0x3t
        0x55t
        0x4t
        0xbt
        0xct
        0xbt
        0x73t
        0x74t
        0x61t
        0x67t
        0x65t
        0x5ft
        0x63t
        0x65t
        0x72t
        0x74t
        0x73t
        0x31t
        0x22t
        0x30t
        0x20t
        0x6t
        0x3t
        0x55t
        0x4t
        0x3t
        0xct
        0x19t
        0x73t
        0x74t
        0x61t
        0x67t
        0x65t
        0x5ft
        0x6dt
        0x70t
        0x6ct
        0x5ft
        0x65t
        0x6et
        0x63t
        0x72t
        0x79t
        0x70t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x5ft
        0x63t
        0x65t
        0x72t
        0x74t
        0x30t
        -0x7et
        0x1t
        0x22t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7et
        0x1t
        0xft
        0x0t
        0x30t
        -0x7et
        0x1t
        0xat
        0x2t
        -0x7et
        0x1t
        0x1t
        0x0t
        -0x67t
        -0x3bt
        -0x70t
        -0x6dt
        0x22t
        0x5ft
        -0x2ct
        0x58t
        -0x8t
        0x2ft
        -0x18t
        0x61t
        -0x60t
        0x18t
        -0x1bt
        -0x10t
        0x60t
        0x4et
        -0x60t
        0x65t
        0x60t
        -0x37t
        0x75t
        -0x67t
        0x1dt
        0x74t
        0x55t
        0x19t
        -0x34t
        0x5t
        0x47t
        -0x15t
        0x1t
        -0x72t
        -0x39t
        -0x32t
        0x24t
        -0x1ft
        0x67t
        0x27t
        -0x3at
        0x20t
        0x15t
        -0x52t
        -0x3t
        0x76t
        0x2at
        0x1t
        -0x5dt
        -0x6ft
        0x72t
        -0xbt
        0x49t
        0x3ft
        0x63t
        0x61t
        -0x1at
        0x67t
        0x61t
        0x31t
        0x27t
        0x21t
        -0xct
        0x1ft
        -0x28t
        0xet
        -0x64t
        -0x63t
        -0x50t
        -0x35t
        -0x69t
        -0x30t
        0x1ct
        0x48t
        0x35t
        0x0t
        0x59t
        -0x2ct
        -0x61t
        -0x2dt
        0x27t
        -0x60t
        -0x9t
        0x1t
        0x49t
        -0x17t
        0x3at
        0x3t
        0x7et
        -0x3dt
        -0x56t
        0x5t
        -0x40t
        -0xat
        -0x6bt
        -0x40t
        0x32t
        0x4ft
        0x40t
        0x2at
        0x72t
        0x21t
        0x79t
        0x3bt
        0x79t
        -0x7at
        -0x69t
        0x6t
        -0x46t
        0x13t
        0x53t
        -0x5bt
        0x30t
        -0x9t
        0x4et
        0x70t
        0x5bt
        0x47t
        -0x1et
        -0x3dt
        0x3t
        0x71t
        0x54t
        -0x2ft
        -0x9t
        0x67t
        -0x4t
        0x28t
        0x14t
        -0x1dt
        -0x5ft
        -0x7ct
        -0x7dt
        -0x80t
        0x2at
        -0x18t
        -0x25t
        0x28t
        0x4at
        -0x79t
        -0x2dt
        -0x57t
        -0xat
        -0x2at
        -0x3ft
        0x2dt
        0x6ft
        -0x1et
        -0x3t
        0x44t
        0x8t
        -0x3ct
        -0x16t
        -0x8t
        -0x19t
        -0x63t
        0xct
        -0x59t
        -0x75t
        0x1t
        -0x5ft
        -0x6et
        -0x1t
        -0x3at
        0xct
        -0x7t
        0x3bt
        -0x16t
        -0x3dt
        0x9t
        0x7at
        -0x1bt
        -0x34t
        -0x72t
        -0x5ct
        0x11t
        0x3bt
        -0x10t
        0x5ft
        -0x6ft
        -0x7ct
        -0x6et
        -0x1ft
        -0x5t
        0x74t
        -0x70t
        -0x79t
        -0x7bt
        -0xbt
        -0x45t
        -0x18t
        0x2et
        0x75t
        -0x8t
        0x78t
        -0x28t
        0x65t
        -0x7ct
        0x46t
        0x71t
        -0x4ft
        -0x19t
        0x78t
        -0xet
        -0x31t
        -0x20t
        -0x35t
        -0x11t
        -0x4t
        -0x55t
        -0x66t
        0x55t
        -0x55t
        0x2ct
        0x5ft
        0x45t
        0x5ct
        -0x31t
        0x3t
        -0xdt
        0xet
        0x56t
        -0x4at
        0x48t
        0x5dt
        -0x2dt
        -0x72t
        0x20t
        0x2bt
        -0x4t
        -0x5ft
        -0x1at
        0x76t
        -0x4et
        0x7at
        -0x49t
        0x19t
        0x76t
        -0x52t
        -0x6ct
        -0x42t
        0x6bt
        0x62t
        -0x66t
        0x5bt
        0x2et
        0x7bt
        0x51t
        -0x71t
        0x1et
        -0x36t
        0x78t
        -0x2ct
        -0x1at
        -0x54t
        -0x61t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x3t
        -0x7et
        0x1t
        0x1t
        0x0t
        0x7bt
        -0x1bt
        -0x3t
        -0x74t
        -0x2et
        -0x4dt
        0x0t
        -0x58t
        -0x79t
        -0x16t
        -0x1ct
        -0x69t
        -0x4bt
        0x3bt
        -0x6dt
        -0x80t
        0x57t
        0x63t
        0x8t
        0x5ct
        -0x7at
        0x2ct
        -0x58t
        -0x74t
        0x0t
        -0x5ct
        0x45t
        0x59t
        0x20t
        0x2t
        -0x29t
        0x9t
        -0x5at
        -0x14t
        0x49t
        0x5t
        -0x28t
        0x7bt
        0x49t
        0x21t
        0x28t
        -0x2dt
        -0x7ct
        -0x2dt
        -0x58t
        0x32t
        0x42t
        -0x66t
        -0x67t
        -0x26t
        0x12t
        0x5t
        -0x11t
        0x1ct
        0x2ft
        0x52t
        -0x1ct
        0x57t
        0x7t
        -0x32t
        0x6ct
        0x58t
        0x78t
        0x77t
        0x69t
        0x20t
        -0x80t
        -0x30t
        -0x1et
        -0x32t
        -0x2t
        -0x3at
        -0x45t
        -0x7et
        -0x50t
        0x68t
        -0x65t
        -0xbt
        0x1bt
        0xdt
        -0x24t
        0x70t
        -0x24t
        0x4dt
        0x10t
        0x4et
        -0x4ct
        -0x5bt
        -0x77t
        -0x38t
        -0x20t
        0x62t
        0x44t
        -0x2ct
        0x56t
        0x5bt
        0x39t
        0x55t
        0x1dt
        0x3ct
        0x22t
        0x7t
        -0x60t
        0x2at
        0x3ct
        -0x65t
        -0x28t
        -0x3et
        -0x29t
        -0x6dt
        0x11t
        -0x32t
        -0x56t
        0x3at
        0x52t
        0x40t
        -0x48t
        0x49t
        -0x5ft
        -0x5bt
        -0xdt
        -0x39t
        -0x21t
        -0x4ct
        0x9t
        -0xft
        0x55t
        0x7dt
        -0x11t
        0x53t
        -0x3dt
        -0x34t
        0x5ct
        -0x1et
        -0x4ct
        -0x76t
        0x0t
        -0x65t
        0xct
        -0x6dt
        0x14t
        0x4at
        -0x72t
        -0x15t
        -0x20t
        -0xft
        0x44t
        -0x3at
        -0x7et
        -0x66t
        0x56t
        -0x57t
        0x44t
        -0x22t
        -0x65t
        -0x6ct
        0x2bt
        0x46t
        -0x4bt
        -0x58t
        0x54t
        0x65t
        -0x1et
        -0x39t
        -0x3bt
        0x5at
        -0x66t
        0x31t
        0x79t
        0x22t
        -0x18t
        0x1et
        -0x41t
        -0x3bt
        -0xct
        0x15t
        0x8t
        -0x73t
        0x66t
        -0x68t
        -0x51t
        0x7t
        0x7et
        -0x8t
        -0x8t
        -0x7ct
        0xct
        0x7bt
        0x2at
        0x36t
        0x9t
        0x3ft
        0x16t
        0xbt
        -0xft
        0x7ct
        0x33t
        -0x4ct
        0x44t
        -0x57t
        -0x71t
        -0x7ft
        -0x5dt
        -0x20t
        0x3at
        0x1et
        0x2t
        -0x5at
        -0xft
        -0x53t
        -0x51t
        0x75t
        -0x3dt
        0x18t
        -0x19t
        -0x78t
        0x1t
        -0x6dt
        0x45t
        0x5ct
        0x5ct
        -0x8t
        0x67t
        0x7t
        -0x3ft
        -0x6bt
        0x36t
        0x37t
        0x59t
        0x32t
        -0xdt
        0x2ct
        0x22t
        0x57t
        -0x58t
        -0x62t
        0x3ct
        0x67t
        0x4t
        0x5dt
        -0x59t
        0x0t
        0x25t
        0x76t
        -0x71t
        0x3bt
        -0x72t
        -0x9t
        0x6at
        -0x5ct
        -0x6et
        0x51t
        0x69t
        0x6dt
        -0x57t
        0x6t
    .end array-data

    :array_1
    .array-data 1
        0x30t
        -0x7et
        0x2t
        0x6at
        0x30t
        -0x7et
        0x1t
        -0x2dt
        0x2t
        0x4t
        0x4dt
        -0x5at
        -0x58t
        -0x3dt
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x30t
        0x7ct
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x6t
        0x13t
        0x2t
        0x55t
        0x53t
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x8t
        0x13t
        0x2t
        0x43t
        0x41t
        0x31t
        0x11t
        0x30t
        0xft
        0x6t
        0x3t
        0x55t
        0x4t
        0x7t
        0x13t
        0x8t
        0x53t
        0x61t
        0x6et
        0x20t
        0x4at
        0x6ft
        0x73t
        0x65t
        0x31t
        0x15t
        0x30t
        0x13t
        0x6t
        0x3t
        0x55t
        0x4t
        0xat
        0x13t
        0xct
        0x50t
        0x61t
        0x79t
        0x50t
        0x61t
        0x6ct
        0x2ct
        0x20t
        0x49t
        0x6et
        0x63t
        0x2et
        0x31t
        0x13t
        0x30t
        0x11t
        0x6t
        0x3t
        0x55t
        0x4t
        0xbt
        0xct
        0xat
        0x6ct
        0x69t
        0x76t
        0x65t
        0x5ft
        0x63t
        0x65t
        0x72t
        0x74t
        0x73t
        0x31t
        0x21t
        0x30t
        0x1ft
        0x6t
        0x3t
        0x55t
        0x4t
        0x3t
        0xct
        0x18t
        0x6ct
        0x69t
        0x76t
        0x65t
        0x5ft
        0x6dt
        0x70t
        0x6ct
        0x5ft
        0x65t
        0x6et
        0x63t
        0x72t
        0x79t
        0x70t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x5ft
        0x63t
        0x65t
        0x72t
        0x74t
        0x30t
        0x1et
        0x17t
        0xdt
        0x31t
        0x31t
        0x30t
        0x34t
        0x31t
        0x34t
        0x30t
        0x37t
        0x35t
        0x36t
        0x35t
        0x31t
        0x5at
        0x17t
        0xdt
        0x31t
        0x33t
        0x30t
        0x36t
        0x32t
        0x32t
        0x30t
        0x37t
        0x35t
        0x36t
        0x35t
        0x31t
        0x5at
        0x30t
        0x7ct
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x6t
        0x13t
        0x2t
        0x55t
        0x53t
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x8t
        0x13t
        0x2t
        0x43t
        0x41t
        0x31t
        0x11t
        0x30t
        0xft
        0x6t
        0x3t
        0x55t
        0x4t
        0x7t
        0x13t
        0x8t
        0x53t
        0x61t
        0x6et
        0x20t
        0x4at
        0x6ft
        0x73t
        0x65t
        0x31t
        0x15t
        0x30t
        0x13t
        0x6t
        0x3t
        0x55t
        0x4t
        0xat
        0x13t
        0xct
        0x50t
        0x61t
        0x79t
        0x50t
        0x61t
        0x6ct
        0x2ct
        0x20t
        0x49t
        0x6et
        0x63t
        0x2et
        0x31t
        0x13t
        0x30t
        0x11t
        0x6t
        0x3t
        0x55t
        0x4t
        0xbt
        0xct
        0xat
        0x6ct
        0x69t
        0x76t
        0x65t
        0x5ft
        0x63t
        0x65t
        0x72t
        0x74t
        0x73t
        0x31t
        0x21t
        0x30t
        0x1ft
        0x6t
        0x3t
        0x55t
        0x4t
        0x3t
        0xct
        0x18t
        0x6ct
        0x69t
        0x76t
        0x65t
        0x5ft
        0x6dt
        0x70t
        0x6ct
        0x5ft
        0x65t
        0x6et
        0x63t
        0x72t
        0x79t
        0x70t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x5ft
        0x63t
        0x65t
        0x72t
        0x74t
        0x30t
        -0x7ft
        -0x61t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7ft
        -0x73t
        0x0t
        0x30t
        -0x7ft
        -0x77t
        0x2t
        -0x7ft
        -0x7ft
        0x0t
        -0x52t
        -0x80t
        -0x45t
        0x4ct
        -0x7ct
        -0x3ft
        0x6ct
        -0x71t
        -0x21t
        0x11t
        0x7t
        -0x56t
        -0x5ft
        -0x7t
        0x72t
        -0x7dt
        -0x3ft
        -0x7dt
        0xet
        -0x43t
        0x12t
        0x44t
        -0x5ft
        -0x3dt
        0x11t
        -0x37t
        -0x11t
        -0x1ct
        -0x12t
        -0x1ct
        -0x75t
        -0x25t
        -0x9t
        0x3bt
        -0x27t
        0x2et
        0x36t
        0x1t
        -0x40t
        0xet
        -0x4et
        0x6t
        -0x1dt
        -0x29t
        0x5at
        -0x14t
        0x6ct
        0x3at
        -0x3ct
        0x16t
        -0x44t
        -0x7dt
        0x4at
        -0xet
        0x12t
        -0x7bt
        -0x24t
        -0x29t
        0x4dt
        -0x6at
        -0x19t
        -0x4at
        -0x5t
        0x70t
        0x7et
        0x6ct
        0x56t
        0x2ct
        0x0t
        -0x3dt
        0x79t
        -0x15t
        -0x2bt
        -0x3t
        0x4at
        -0x7dt
        -0x7at
        0x72t
        0x2at
        0x6dt
        -0x30t
        0x3dt
        0x4dt
        -0x34t
        0x79t
        -0x3bt
        0x33t
        -0x6ct
        -0x34t
        -0x2ct
        0x40t
        0x29t
        0x54t
        -0x5ct
        -0x2bt
        0x61t
        -0x4dt
        0x51t
        -0x58t
        -0x6ft
        0x7ct
        0x10t
        -0x6et
        -0x55t
        -0xbt
        0x2t
        -0x4ct
        0x67t
        0x32t
        -0x38t
        -0x5dt
        0x1t
        -0x73t
        0x52t
        0x2bt
        0x4at
        0x4ft
        0x6et
        -0x10t
        -0x44t
        0xct
        0x17t
        -0x38t
        0x1ft
        -0x6ct
        -0x71t
        0x52t
        0x2ft
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x3t
        -0x7ft
        -0x7ft
        0x0t
        0x76t
        -0x69t
        -0x7t
        0x45t
        -0x77t
        -0x4bt
        0x1ft
        0x6et
        0x5bt
        0xat
        0x7ct
        -0x24t
        -0x29t
        -0x6ft
        0x64t
        -0x37t
        -0x67t
        -0x47t
        0x76t
        -0x12t
        -0x1ft
        0x37t
        -0x54t
        -0x16t
        0xat
        -0xft
        0x72t
        0x27t
        -0x76t
        -0x4t
        0x21t
        -0x48t
        -0x70t
        0x5t
        0x6at
        0x64t
        -0x7ft
        0x3at
        0x47t
        0x1at
        -0x2t
        0x56t
        -0x6ft
        0x1ft
        -0xft
        0x59t
        0x17t
        0x5bt
        0x42t
        0x41t
        0x34t
        0x59t
        0x73t
        -0x67t
        -0x4t
        -0x5et
        0x1dt
        0x5at
        -0xft
        0x8t
        0x29t
        0x3dt
        0x1dt
        0x2at
        -0x6ft
        0x19t
        -0x5et
        0x1dt
        0x17t
        0x46t
        -0x30t
        0x3bt
        -0x25t
        -0x20t
        0x66t
        0x6ft
        0x21t
        0x21t
        -0x22t
        -0x6at
        -0x3ct
        0x79t
        -0x7ft
        -0x73t
        -0x4ft
        -0x1dt
        -0x9t
        0x52t
        -0x61t
        -0xbt
        -0x33t
        0xft
        -0x7dt
        -0x14t
        0x1et
        -0xbt
        0x4bt
        -0x14t
        -0x13t
        0x61t
        0x69t
        0x38t
        -0x9t
        -0x76t
        0x22t
        0x4t
        0x43t
        -0x31t
        -0x2at
        0x53t
        0x60t
        -0xet
        -0x3bt
        0x27t
        -0x9t
        -0x64t
        -0x44t
        -0xdt
        -0x4ct
        0x29t
        0xbt
        -0x3bt
        -0x22t
        -0x4ft
        0x8t
        -0x28t
        -0x5et
        -0x4bt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x30t
        -0x7et
        0x2t
        0x78t
        0x30t
        -0x7et
        0x1t
        -0x1ft
        0x2t
        0x4t
        0x4dt
        -0x5at
        -0x5et
        0x45t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x30t
        -0x7ft
        -0x7et
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x6t
        0x13t
        0x2t
        0x55t
        0x53t
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x8t
        0x13t
        0x2t
        0x43t
        0x41t
        0x31t
        0x11t
        0x30t
        0xft
        0x6t
        0x3t
        0x55t
        0x4t
        0x7t
        0x13t
        0x8t
        0x53t
        0x61t
        0x6et
        0x20t
        0x4at
        0x6ft
        0x73t
        0x65t
        0x31t
        0x15t
        0x30t
        0x13t
        0x6t
        0x3t
        0x55t
        0x4t
        0xat
        0x13t
        0xct
        0x50t
        0x61t
        0x79t
        0x50t
        0x61t
        0x6ct
        0x2ct
        0x20t
        0x49t
        0x6et
        0x63t
        0x2et
        0x31t
        0x16t
        0x30t
        0x14t
        0x6t
        0x3t
        0x55t
        0x4t
        0xbt
        0xct
        0xdt
        0x73t
        0x61t
        0x6et
        0x64t
        0x62t
        0x6ft
        0x78t
        0x5ft
        0x63t
        0x65t
        0x72t
        0x74t
        0x73t
        0x31t
        0x24t
        0x30t
        0x22t
        0x6t
        0x3t
        0x55t
        0x4t
        0x3t
        0xct
        0x1bt
        0x73t
        0x61t
        0x6et
        0x64t
        0x62t
        0x6ft
        0x78t
        0x5ft
        0x6dt
        0x70t
        0x6ct
        0x5ft
        0x65t
        0x6et
        0x63t
        0x72t
        0x79t
        0x70t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x5ft
        0x63t
        0x65t
        0x72t
        0x74t
        0x30t
        0x1et
        0x17t
        0xdt
        0x31t
        0x31t
        0x30t
        0x34t
        0x31t
        0x34t
        0x30t
        0x37t
        0x32t
        0x39t
        0x30t
        0x39t
        0x5at
        0x17t
        0xdt
        0x33t
        0x36t
        0x30t
        0x34t
        0x30t
        0x37t
        0x30t
        0x37t
        0x32t
        0x39t
        0x30t
        0x39t
        0x5at
        0x30t
        -0x7ft
        -0x7et
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x6t
        0x13t
        0x2t
        0x55t
        0x53t
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x8t
        0x13t
        0x2t
        0x43t
        0x41t
        0x31t
        0x11t
        0x30t
        0xft
        0x6t
        0x3t
        0x55t
        0x4t
        0x7t
        0x13t
        0x8t
        0x53t
        0x61t
        0x6et
        0x20t
        0x4at
        0x6ft
        0x73t
        0x65t
        0x31t
        0x15t
        0x30t
        0x13t
        0x6t
        0x3t
        0x55t
        0x4t
        0xat
        0x13t
        0xct
        0x50t
        0x61t
        0x79t
        0x50t
        0x61t
        0x6ct
        0x2ct
        0x20t
        0x49t
        0x6et
        0x63t
        0x2et
        0x31t
        0x16t
        0x30t
        0x14t
        0x6t
        0x3t
        0x55t
        0x4t
        0xbt
        0xct
        0xdt
        0x73t
        0x61t
        0x6et
        0x64t
        0x62t
        0x6ft
        0x78t
        0x5ft
        0x63t
        0x65t
        0x72t
        0x74t
        0x73t
        0x31t
        0x24t
        0x30t
        0x22t
        0x6t
        0x3t
        0x55t
        0x4t
        0x3t
        0xct
        0x1bt
        0x73t
        0x61t
        0x6et
        0x64t
        0x62t
        0x6ft
        0x78t
        0x5ft
        0x6dt
        0x70t
        0x6ct
        0x5ft
        0x65t
        0x6et
        0x63t
        0x72t
        0x79t
        0x70t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x5ft
        0x63t
        0x65t
        0x72t
        0x74t
        0x30t
        -0x7ft
        -0x61t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7ft
        -0x73t
        0x0t
        0x30t
        -0x7ft
        -0x77t
        0x2t
        -0x7ft
        -0x7ft
        0x0t
        -0x7at
        0x3ct
        -0x11t
        -0x62t
        0x7et
        0x61t
        -0x7ct
        -0x2bt
        0xat
        -0x68t
        0x7ct
        0x75t
        -0x29t
        -0xft
        -0x6at
        0x2bt
        -0x34t
        -0x50t
        -0x59t
        -0xdt
        -0x9t
        0x47t
        -0x7at
        0x1ct
        0x61t
        0x1et
        -0x80t
        0x19t
        0x21t
        0x3bt
        -0x42t
        0xbt
        0x4bt
        -0x4ft
        0x5bt
        -0x43t
        0x7ct
        -0x10t
        -0x36t
        0x16t
        0x47t
        0x53t
        -0x59t
        0x5t
        -0x68t
        0x60t
        -0x52t
        0x7ct
        -0x37t
        -0x40t
        0x76t
        0x78t
        -0x7at
        0x74t
        -0x63t
        0x6at
        -0x1dt
        -0x55t
        -0x36t
        0x10t
        0x22t
        -0x16t
        -0x52t
        -0x1et
        -0xbt
        0x3et
        0x27t
        0x7bt
        0x12t
        -0x28t
        0x6t
        -0x6at
        0x1dt
        -0x19t
        0x2ft
        0x37t
        0x1ct
        0x1ct
        0x34t
        0xdt
        0x3ft
        -0x2t
        0x4ct
        0x5et
        0x4at
        0x37t
        -0x61t
        -0x13t
        0x1bt
        -0x53t
        0x5dt
        0x39t
        0x40t
        -0x3ft
        -0x39t
        -0x38t
        -0x39t
        -0x58t
        0x13t
        0x34t
        -0x7ct
        -0x34t
        0x25t
        -0x1ct
        -0x52t
        -0x3at
        0x64t
        0x79t
        0x4ft
        0x16t
        0xft
        0x4et
        -0x21t
        -0x1t
        -0x1et
        0x32t
        -0x5t
        -0x20t
        0x7at
        -0x6t
        -0x74t
        -0x74t
        0x54t
        -0x69t
        0x2at
        0x56t
        -0x1et
        0x63t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x3t
        -0x7ft
        -0x7ft
        0x0t
        0x2et
        0x1dt
        0xbt
        -0x15t
        -0x5ft
        -0x25t
        -0x3ct
        0x10t
        0x5t
        0x2et
        0x70t
        -0x1ct
        -0x48t
        0x2t
        0x2ct
        -0x29t
        0x26t
        0x5dt
        -0x49t
        0xft
        0x70t
        -0x2at
        -0xft
        -0xft
        -0x50t
        -0x78t
        0x37t
        -0x23t
        -0x24t
        0x7t
        0x6ft
        -0x4at
        -0x34t
        -0x51t
        0x3ct
        -0x7dt
        0x45t
        0x75t
        -0x67t
        0x4ft
        0x71t
        0x19t
        0x24t
        0x2ct
        0x1dt
        0x61t
        0x61t
        -0x42t
        -0x8t
        0x5et
        -0x55t
        0x1ct
        0x60t
        -0x6at
        0x18t
        0x40t
        -0x1t
        -0x37t
        -0x70t
        -0x34t
        -0x39t
        0x23t
        -0x24t
        0x7at
        -0x15t
        0x7at
        0x25t
        0x36t
        -0x44t
        -0x30t
        0x24t
        0xbt
        0xbt
        0x5bt
        0x3at
        -0x64t
        0x7et
        0x1ct
        -0x6dt
        0x13t
        0x5ft
        0x31t
        -0x2et
        0x19t
        0x4dt
        -0x6et
        0x50t
        0x7at
        -0x16t
        -0x29t
        -0x62t
        0x3ct
        -0x76t
        0x1et
        -0x6ft
        0x3et
        -0x59t
        0x9t
        -0x14t
        -0x68t
        -0x64t
        -0x78t
        0x45t
        -0x6et
        -0x4t
        0x12t
        0x6et
        -0x32t
        0x53t
        -0x11t
        0x73t
        -0x4ct
        0x6ft
        0x5ft
        -0x6at
        -0x5t
        0x8t
        -0x5dt
        -0x1ft
        0xdt
        0x36t
        -0x7at
        -0x61t
        -0x29t
        0x9t
        -0x3ft
        0x60t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/a/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    iput v1, p0, Lcom/paypal/android/a/b;->e:I

    iput v1, p0, Lcom/paypal/android/a/b;->f:I

    iput v1, p0, Lcom/paypal/android/a/b;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/a/b;->i:Z

    new-instance v0, Lcom/paypal/android/a/k;

    invoke-direct {v0, p0}, Lcom/paypal/android/a/k;-><init>(Lcom/paypal/android/a/b;)V

    iput-object v0, p0, Lcom/paypal/android/a/b;->j:Ljava/lang/Thread;

    return-void
.end method

.method private static A()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Exception"

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private B()Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/paypal/android/a/m;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/paypal/android/a/b;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/DeviceInterrogation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MPL"

    const-string v5, "start makeDeviceInterrogationRequest Post"

    invoke-static {v4, v5}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v3, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MPL"

    const-string v6, "end makeDeviceInterrogationRequest Post"

    invoke-static {v5, v6}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v5

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    new-instance v7, Ljava/io/ByteArrayInputStream;

    const-string v8, "UTF-8"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v6, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/paypal/android/a/b;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v1, "makeDeviceInterrogationRequest"

    invoke-static {v1, v3, v2, v4}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v6, v1}, Lcom/paypal/android/a/m;->a(Lorg/w3c/dom/Document;Ljava/util/Hashtable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    :goto_0
    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->resetAccount()V

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string v4, "makeDeviceInterrogationRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v3, v2, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->resetAccount()V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v4, "makeDeviceInterrogationRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v3, v2, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->resetAccount()V

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v4, "makeDeviceInterrogationRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v3, v2, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->resetAccount()V

    goto :goto_1

    :catch_3
    move-exception v1

    const-string v4, "makeDeviceInterrogationRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v3, v2, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->resetAccount()V

    goto/16 :goto_1

    :catch_4
    move-exception v1

    const-string v4, "makeDeviceInterrogationRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v3, v2, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->resetAccount()V

    goto/16 :goto_1

    :catch_5
    move-exception v1

    const-string v2, "NetworkHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeDeviceInterrogationRequest caught exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v6, v2}, Lcom/paypal/android/a/m;->a(Lorg/w3c/dom/Document;Ljava/util/Hashtable;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->resetAccount()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/paypal/android/a/b;->f:I

    const-string v1, "NetworkHandler"

    const-string v2, "makeDeviceInterrogationRequest something failed"

    invoke-static {v1, v2}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private C()Z
    .locals 7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    const-string v2, "NewPin"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/paypal/android/a/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/paypal/android/a/m;->a(Ljava/util/Hashtable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/paypal/android/a/b;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/DeviceCreatePin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/paypal/android/a/b;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Lcom/paypal/android/a/m;->b(Lorg/w3c/dom/Document;)Z

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v1, "createPIN"

    invoke-static {v1, v2, v0, v3}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/paypal/android/a/f; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/paypal/android/a/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/paypal/android/a/b;->f:I

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPIN caught BadXMLException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/paypal/android/a/f;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPIN caught BadPhoneNumberException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/paypal/android/a/n;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_4
    move-exception v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_5
    move-exception v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_6
    move-exception v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_7
    move-exception v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private D()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/paypal/android/a/m;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/paypal/android/a/b;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/RemoveDeviceAuthorization"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/paypal/android/a/b;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v2, v1}, Lcom/paypal/android/a/m;->f(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "NetworkHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readRemoveDeviceAuthorization caught exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v2, v3}, Lcom/paypal/android/a/m;->f(Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/paypal/android/a/b;->f:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/paypal/android/a/b;I)I
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/paypal/android/a/b;->g:I

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/a/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/paypal/android/a/b;->h()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/a/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    new-instance v0, Lorg/apache/http/entity/StringEntity;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "CLIENT-AUTH"

    const-string v5, "No cert"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-MESSAGE-PROTOCOL"

    const-string v5, "SOAP11"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-APPLICATION-ID"

    sget-object v5, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->getAppID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-REQUEST-SOURCE"

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getVersionWithoutBuild()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-REQUEST-DATA-FORMAT"

    const-string v5, "XML"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-RESPONSE-DATA-FORMAT"

    const-string v5, "XML"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-RESPONSE-DATA-FORMAT"

    const-string v5, "XML"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-RESPONSE-DATA-FORMAT"

    const-string v5, "XML"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-RESPONSE-DATA-FORMAT"

    const-string v5, "XML"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "x-paypal-service-version"

    const-string v5, "1.0.0"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "x-paypal-element-ordering-preserve"

    const-string v5, "false"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :goto_0
    const-string v0, "NetworkHandler"

    const-string v2, "postXML do execute"

    invoke-static {v0, v2}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/paypal/android/a/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_9

    array-length v6, v3

    move v2, v4

    move v0, v4

    :goto_1
    if-ge v2, v6, :cond_a

    aget-object v7, v3, v2

    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Content-Length"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/paypal/android/a/b;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "CLIENT-AUTH"

    const-string v5, "No cert"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-MESSAGE-PROTOCOL"

    const-string v5, "SOAP11"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-DEVICE-IPADDRESS"

    invoke-static {}, Lcom/paypal/android/a/b;->A()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-APPLICATION-ID"

    sget-object v5, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->getAppID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-DEVICE-AUTH-TOKEN"

    sget-object v5, Lcom/paypal/android/a/b;->q:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-REQUEST-SOURCE"

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getVersionWithoutBuild()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-REQUEST-DATA-FORMAT"

    const-string v5, "XML"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-RESPONSE-DATA-FORMAT"

    const-string v5, "XML"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "x-paypal-service-version"

    const-string v5, "1.0.0"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "x-paypal-element-ordering-preserve"

    const-string v5, "false"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_3
    :try_start_1
    const-string v5, "NetworkHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "postXML caught exception doing I/O, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_5
    iput-object v1, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    iput-object v1, p0, Lcom/paypal/android/a/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    iput v4, p0, Lcom/paypal/android/a/b;->f:I

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_5
    :try_start_4
    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-SECURITY-PASSWORD"

    const-string v5, "MPL"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-SECURITY-USERID"

    const-string v5, "MPL"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "X-PAYPAL-SECURITY-SIGNATURE"

    const-string v5, "MPL"

    invoke-virtual {v2, v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_7
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    :cond_6
    :goto_8
    if-eqz v3, :cond_7

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_7
    :goto_9
    iput-object v1, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    iput-object v1, p0, Lcom/paypal/android/a/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    throw v0

    :cond_8
    :try_start_7
    const-string v0, "ErrorId=-1"
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iput-object v1, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    iput-object v1, p0, Lcom/paypal/android/a/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    goto :goto_6

    :cond_9
    move v0, v4

    :cond_a
    :try_start_8
    const-string v2, "NetworkHandler"

    const-string v3, "postXML setup to read reponse"

    invoke-static {v2, v3}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v3

    :try_start_9
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v6

    if-le v6, v0, :cond_b

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    :cond_b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v6

    if-le v6, v0, :cond_c

    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v0

    :cond_c
    const-string v6, "NetworkHandler"

    const-string v7, "postXML do read response"

    invoke-static {v6, v7}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_f

    new-array v6, v0, [B

    invoke-virtual {v2, v6}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v0, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_a
    if-eqz v5, :cond_d

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_d
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/paypal/android/a/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :goto_b
    if-eqz v3, :cond_e

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :cond_e
    :goto_c
    iput-object v1, p0, Lcom/paypal/android/a/b;->c:Lorg/apache/http/client/methods/HttpPost;

    iput-object v1, p0, Lcom/paypal/android/a/b;->d:Lorg/apache/http/impl/client/DefaultHttpClient;

    goto/16 :goto_6

    :cond_f
    :try_start_d
    new-instance v0, Ljava/lang/String;

    invoke-static {v2}, Lcom/paypal/android/a/b;->a(Ljava/io/InputStream;)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_a

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :catch_2
    move-exception v2

    const-string v3, "NetworkHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postXML caught exception closing streams"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_3
    move-exception v0

    const-string v2, "NetworkHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postXML caught exception closing streams"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catch_4
    move-exception v2

    const-string v3, "NetworkHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postXML caught exception closing streams"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :catch_5
    move-exception v2

    goto :goto_b

    :catch_6
    move-exception v0

    goto/16 :goto_4

    :catch_7
    move-exception v2

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    goto/16 :goto_7

    :catch_8
    move-exception v0

    move-object v2, v1

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/paypal/android/a/b;ILcom/paypal/android/c/a;)V
    .locals 4

    invoke-virtual {p0}, Lcom/paypal/android/a/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/paypal/android/c/a;->b(ILjava/lang/Object;)V

    const-string v1, "MPL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/a/b;Ljava/lang/String;Lcom/paypal/android/MEP/a$b;)V
    .locals 4

    invoke-virtual {p0}, Lcom/paypal/android/a/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/paypal/android/MEP/a$b;->d(Ljava/lang/String;)V

    const-string v1, "MPL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "NetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error endpoint - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error request - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const-string v0, "NetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error reply - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static final a()Z
    .locals 2

    :try_start_0
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    iget-object v0, v0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    const-string v1, "payButtonEnable"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/paypal/android/a/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/paypal/android/a/b;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/paypal/android/a/b;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/paypal/android/a/n;,
            Lcom/paypal/android/a/f;,
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/paypal/android/a/b;->x()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v2, ""

    sput-object v2, Lcom/paypal/android/a/b;->q:Ljava/lang/String;

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    const-string v0, "authorizationType"

    const-string v4, "Email"

    invoke-static {v3, v0, v4}, Lcom/paypal/android/a/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "email"

    invoke-static {p1}, Lcom/paypal/android/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/paypal/android/a/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "password"

    invoke-static {p2}, Lcom/paypal/android/a/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/paypal/android/a/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, "authorizeDevice"

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getIsRememberMe()Z

    move-result v2

    invoke-static {v3, v0, v2}, Lcom/paypal/android/a/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/a/b;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/DeviceAuthenticateUser"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/paypal/android/a/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "authorizationType"

    const-string v4, "Phone"

    invoke-static {v3, v0, v4}, Lcom/paypal/android/a/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<phone>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "countryCode"

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getAccountCountryDialingCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/paypal/android/a/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "phoneNumber"

    invoke-static {p1}, Lcom/paypal/android/a/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/paypal/android/a/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</phone>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "password"

    invoke-static {p2}, Lcom/paypal/android/a/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/paypal/android/a/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/paypal/android/a/f;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string v4, "UTF-8"

    invoke-virtual {p3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/paypal/android/a/b;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "createQuickPayment"

    invoke-static {v1, p1, p2, p3}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "parseDeviceAuthenticateUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, p2, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "parseDeviceAuthenticateUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, p2, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "parseDeviceAuthenticateUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, p2, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v1

    if-nez p3, :cond_1

    const-string v1, "parseDeviceAuthenticateUser"

    const-string v2, "null response from server"

    invoke-static {v1, p1, p2, v2}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "parseDeviceAuthenticateUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, p2, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_4
    move-exception v1

    const-string v2, "parseDeviceAuthenticateUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p1, p2, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v3, "pinEstablished"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-eq v4, v1, :cond_3

    new-instance v0, Lcom/paypal/android/a/f;

    const-string v1, "Not exactly one pinEstablished tag"

    invoke-direct {v0, v1}, Lcom/paypal/android/a/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/paypal/android/MEP/PayPal;->setPINCreated(Z)V

    const-string v3, "sessionToken"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-eq v4, v1, :cond_4

    new-instance v0, Lcom/paypal/android/a/f;

    const-string v1, "Not exactly one sessionToken tag"

    invoke-direct {v0, v1}, Lcom/paypal/android/a/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/paypal/android/a/b;->q:Ljava/lang/String;

    const-string v3, "deviceAuthorized"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-eq v4, v1, :cond_5

    new-instance v0, Lcom/paypal/android/a/f;

    const-string v1, "Not exactly one deviceAuthorized tag"

    invoke-direct {v0, v1}, Lcom/paypal/android/a/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    const-string v5, "AuthorizedDevice"

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/paypal/android/a/m;->a(Lorg/w3c/dom/Document;)V

    sget-object v2, Lcom/paypal/android/a/b;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method private a(Lorg/w3c/dom/Document;Ljava/lang/String;)Z
    .locals 9

    const/16 v1, 0x198

    const/4 v2, -0x1

    const/16 v8, 0xb

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput v2, p0, Lcom/paypal/android/a/b;->f:I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iput v1, p0, Lcom/paypal/android/a/b;->f:I

    :goto_0
    return v6

    :cond_1
    invoke-static {p1}, Lcom/paypal/android/a/m;->c(Lorg/w3c/dom/Document;)I

    move-result v0

    if-nez p2, :cond_2

    iput v1, p0, Lcom/paypal/android/a/b;->f:I

    goto :goto_0

    :cond_2
    const-string v1, "ErrorId="

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "ErrorId="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ErrorId="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/paypal/android/a/b;->f:I

    :cond_3
    :goto_1
    iget v0, p0, Lcom/paypal/android/a/b;->f:I

    if-ne v0, v2, :cond_6

    move v6, v5

    goto :goto_0

    :cond_4
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/paypal/android/a/b;->f:I

    goto :goto_1

    :cond_5
    const-string v0, "<SOAP-ENV:Body"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "</SOAP-ENV:Body"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iput v5, p0, Lcom/paypal/android/a/b;->f:I

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/paypal/android/a/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/paypal/android/a/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/paypal/android/a/b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/paypal/android/a/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p2}, Lcom/paypal/android/a/m;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object v1, v0

    move v0, v5

    :goto_2
    array-length v4, v2

    if-ge v0, v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v1, v0, 0x1

    array-length v7, v2

    if-ne v1, v7, :cond_7

    const-string v1, "."

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const-string v1, ","

    goto :goto_3

    :cond_8
    move-object v0, v1

    :cond_9
    invoke-static {v3}, Lcom/paypal/android/a/b;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "FATAL_ERROR_ID"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v1, "569060"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "ANDROID_no_personal_payments"

    invoke-static {v0}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_4
    iget v0, p0, Lcom/paypal/android/a/b;->e:I

    if-eq v0, v8, :cond_a

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    const-string v2, "CorrelationId"

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    const-string v8, "PayKey"

    invoke-virtual {v2, v8}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_a
    const-string v0, "FATAL_ERROR_MESSAGE"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_5
    :try_start_0
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_b
    const-string v1, "500000"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "ANDROID_10001"

    invoke-static {v0}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_4

    :cond_c
    const-string v1, "580001"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :try_start_1
    const-string v1, "parameter"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    const-string v1, "ANDROID_580001_4"

    invoke-static {v1}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_d
    move-object v4, v0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v4, v0

    goto :goto_4

    :cond_e
    const-string v1, "520009"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :try_start_2
    const-string v1, "parameter"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    const-string v1, "ANDROID_520009_2"

    invoke-static {v1}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :cond_f
    move-object v4, v0

    goto/16 :goto_4

    :catch_2
    move-exception v1

    :cond_10
    move-object v4, v0

    goto/16 :goto_4

    :cond_11
    invoke-static {v3}, Lcom/paypal/android/a/b;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/paypal/android/a/b;->e:I

    if-eq v1, v8, :cond_12

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->LOGIN_FAIL:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "FATAL_ERROR_ID"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ERROR_TIMEOUT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_5

    :cond_12
    invoke-static {v3}, Lcom/paypal/android/a/b;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/paypal/android/a/b;->e:I

    if-ne v1, v8, :cond_13

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "FATAL_ERROR_ID"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "FATAL_ERROR_MESSAGE"

    const-string v3, "ANDROID_pin_creation_timeout"

    invoke-static {v3}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ERROR_TIMEOUT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_5

    :cond_13
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_FAIL:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0x400

    const/4 v2, 0x0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v3, v2

    move-object v0, v1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    if-nez v0, :cond_0

    const/16 v6, 0x400

    new-array v0, v6, [B

    :cond_0
    if-ne v3, v7, :cond_1

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    :cond_1
    int-to-byte v5, v5

    :try_start_2
    aput-byte v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_1
    if-ge v2, v3, :cond_3

    aget-byte v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    new-array v0, v0, [B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/paypal/android/a/b;I)I
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/paypal/android/a/b;->e:I

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "https://mobileclient.paypal.com/"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, ""

    goto :goto_0

    :pswitch_2
    const-string v0, "https://mobileclient.sandbox.paypal.com/"

    goto :goto_0

    :pswitch_3
    const-string v0, "https://www.stage2mb101.paypal.com:10521/"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic b(Lcom/paypal/android/a/b;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic c(Lcom/paypal/android/a/b;)I
    .locals 1

    iget v0, p0, Lcom/paypal/android/a/b;->g:I

    return v0
.end method

.method public static c()V
    .locals 3

    sget-object v0, Lcom/paypal/android/a/b;->l:Lcom/paypal/android/a/b$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/paypal/android/a/b$a;

    invoke-direct {v0}, Lcom/paypal/android/a/b$a;-><init>()V

    sput-object v0, Lcom/paypal/android/a/b;->l:Lcom/paypal/android/a/b$a;

    :cond_0
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/paypal/android/a/b;

    invoke-direct {v0}, Lcom/paypal/android/a/b;-><init>()V

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    :cond_1
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    iget-object v0, v0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    if-nez v0, :cond_2

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, v0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    :cond_2
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    iget-object v0, v0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    const-string v1, "payButtonEnable"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPal;->setLibraryInitialized(Z)V

    :goto_0
    return-void

    :cond_3
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    iget-object v0, v0, Lcom/paypal/android/a/b;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    iget-object v0, v0, Lcom/paypal/android/a/b;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/b;->a(I)V

    goto :goto_0
.end method

.method public static d()V
    .locals 3

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/paypal/android/a/b;->i:Z

    :goto_1
    iget-object v1, v0, Lcom/paypal/android/a/b;->j:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NetworkHandler"

    const-string v2, "waiting for thread to stop"

    invoke-static {v1, v2}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v1, "NetworkHandler"

    const-string v2, "waiting for thread to stop"

    invoke-static {v1, v2}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "NetworkHandler"

    const-string v1, "thread has stopped"

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    goto :goto_0
.end method

.method static synthetic d(Lcom/paypal/android/a/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/a/b;->B()Z

    move-result v0

    return v0
.end method

.method public static e()Lcom/paypal/android/a/b;
    .locals 1

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string p0, ""

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/paypal/android/a/b;->p:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic e(Lcom/paypal/android/a/b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/paypal/android/a/f;
        }
    .end annotation

    invoke-static {}, Lcom/paypal/android/a/b;->x()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, ""

    sput-object v0, Lcom/paypal/android/a/b;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authorizationType"

    const-string v2, "Device"

    invoke-static {v0, v1, v2}, Lcom/paypal/android/a/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "authorizeDevice"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/paypal/android/a/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/paypal/android/a/b;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DeviceAuthenticateUser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/a/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/paypal/android/a/b;->p:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/paypal/android/a/b;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic f(Lcom/paypal/android/a/b;)Ljava/util/Hashtable;
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/a/b;->y()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/paypal/android/a/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/a/b;->s()Z

    move-result v0

    return v0
.end method

.method private static g(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "560027"

    aput-object v0, v3, v1

    const-string v0, "580022"

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const-string v4, "580023"

    aput-object v4, v3, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic h(Lcom/paypal/android/a/b;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/paypal/android/a/m;->a(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/a/b;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ExecutePayment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/paypal/android/a/b;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "sendPayment"

    invoke-static {v3, v1, v0, v2}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v2}, Lcom/paypal/android/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    goto :goto_0
.end method

.method public static final h()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 6

    const/16 v5, 0x1e

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    :try_start_0
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    new-instance v3, Lcom/paypal/android/a/c;

    invoke-direct {v3}, Lcom/paypal/android/a/c;-><init>()V

    const/16 v4, 0x1bb

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string v0, "http.conn-manager.max-total"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string v0, "http.conn-manager.max-per-route"

    new-instance v3, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v3, v5}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-interface {v2, v0, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string v0, "http.protocol.expect-continue"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v2, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_1
.end method

.method private static h(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "10818"

    aput-object v0, v3, v1

    const-string v0, "10897"

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const-string v4, "10898"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "10899"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "520003"

    aput-object v4, v3, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic i(Lcom/paypal/android/a/b;)Ljava/util/Hashtable;
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/a/b;->z()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method private static i(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x40

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "10001"

    aput-object v0, v3, v1

    const-string v0, "10004"

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const-string v4, "10800"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "10801"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "10802"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "10804"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "10805"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string v4, "10806"

    aput-object v4, v3, v0

    const/16 v0, 0x8

    const-string v4, "10808"

    aput-object v4, v3, v0

    const/16 v0, 0x9

    const-string v4, "10809"

    aput-object v4, v3, v0

    const/16 v0, 0xa

    const-string v4, "10810"

    aput-object v4, v3, v0

    const/16 v0, 0xb

    const-string v4, "10811"

    aput-object v4, v3, v0

    const/16 v0, 0xc

    const-string v4, "10812"

    aput-object v4, v3, v0

    const/16 v0, 0xd

    const-string v4, "10813"

    aput-object v4, v3, v0

    const/16 v0, 0xe

    const-string v4, "10815"

    aput-object v4, v3, v0

    const/16 v0, 0xf

    const-string v4, "10819"

    aput-object v4, v3, v0

    const/16 v0, 0x10

    const-string v4, "10820"

    aput-object v4, v3, v0

    const/16 v0, 0x11

    const-string v4, "10821"

    aput-object v4, v3, v0

    const/16 v0, 0x12

    const-string v4, "10822"

    aput-object v4, v3, v0

    const/16 v0, 0x13

    const-string v4, "10823"

    aput-object v4, v3, v0

    const/16 v0, 0x14

    const-string v4, "10824"

    aput-object v4, v3, v0

    const/16 v0, 0x15

    const-string v4, "10825"

    aput-object v4, v3, v0

    const/16 v0, 0x16

    const-string v4, "10849"

    aput-object v4, v3, v0

    const/16 v0, 0x17

    const-string v4, "10850"

    aput-object v4, v3, v0

    const/16 v0, 0x18

    const-string v4, "10858"

    aput-object v4, v3, v0

    const/16 v0, 0x19

    const-string v4, "10859"

    aput-object v4, v3, v0

    const/16 v0, 0x1a

    const-string v4, "10860"

    aput-object v4, v3, v0

    const/16 v0, 0x1b

    const-string v4, "10861"

    aput-object v4, v3, v0

    const/16 v0, 0x1c

    const-string v4, "10862"

    aput-object v4, v3, v0

    const/16 v0, 0x1d

    const-string v4, "10863"

    aput-object v4, v3, v0

    const/16 v0, 0x1e

    const-string v4, "10864"

    aput-object v4, v3, v0

    const/16 v0, 0x1f

    const-string v4, "10867"

    aput-object v4, v3, v0

    const/16 v0, 0x20

    const-string v4, "99999"

    aput-object v4, v3, v0

    const/16 v0, 0x21

    const-string v4, "520002"

    aput-object v4, v3, v0

    const/16 v0, 0x22

    const-string v4, "520009"

    aput-object v4, v3, v0

    const/16 v0, 0x23

    const-string v4, "539041"

    aput-object v4, v3, v0

    const/16 v0, 0x24

    const-string v4, "540031"

    aput-object v4, v3, v0

    const/16 v0, 0x25

    const-string v4, "550001"

    aput-object v4, v3, v0

    const/16 v0, 0x26

    const-string v4, "550006"

    aput-object v4, v3, v0

    const/16 v0, 0x27

    const-string v4, "559044"

    aput-object v4, v3, v0

    const/16 v0, 0x28

    const-string v4, "560027"

    aput-object v4, v3, v0

    const/16 v0, 0x29

    const-string v4, "569000"

    aput-object v4, v3, v0

    const/16 v0, 0x2a

    const-string v4, "569042"

    aput-object v4, v3, v0

    const/16 v0, 0x2b

    const-string v4, "569056"

    aput-object v4, v3, v0

    const/16 v0, 0x2c

    const-string v4, "569060"

    aput-object v4, v3, v0

    const/16 v0, 0x2d

    const-string v4, "579007"

    aput-object v4, v3, v0

    const/16 v0, 0x2e

    const-string v4, "579017"

    aput-object v4, v3, v0

    const/16 v0, 0x2f

    const-string v4, "579033"

    aput-object v4, v3, v0

    const/16 v0, 0x30

    const-string v4, "579040"

    aput-object v4, v3, v0

    const/16 v0, 0x31

    const-string v4, "579045"

    aput-object v4, v3, v0

    const/16 v0, 0x32

    const-string v4, "579047"

    aput-object v4, v3, v0

    const/16 v0, 0x33

    const-string v4, "579048"

    aput-object v4, v3, v0

    const/16 v0, 0x34

    const-string v4, "580001"

    aput-object v4, v3, v0

    const/16 v0, 0x35

    const-string v4, "580022"

    aput-object v4, v3, v0

    const/16 v0, 0x36

    const-string v4, "580023"

    aput-object v4, v3, v0

    const/16 v0, 0x37

    const-string v4, "580028"

    aput-object v4, v3, v0

    const/16 v0, 0x38

    const-string v4, "580030"

    aput-object v4, v3, v0

    const/16 v0, 0x39

    const-string v4, "580031"

    aput-object v4, v3, v0

    const/16 v0, 0x3a

    const-string v4, "580032"

    aput-object v4, v3, v0

    const/16 v0, 0x3b

    const-string v4, "580033"

    aput-object v4, v3, v0

    const/16 v0, 0x3c

    const-string v4, "580034"

    aput-object v4, v3, v0

    const/16 v0, 0x3d

    const-string v4, "589009"

    aput-object v4, v3, v0

    const/16 v0, 0x3e

    const-string v4, "589019"

    aput-object v4, v3, v0

    const/16 v0, 0x3f

    const-string v4, "500000"

    aput-object v4, v3, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/paypal/android/a/b;->n:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v0

    :goto_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/paypal/android/a/a;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/paypal/android/a/b;->o:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/paypal/android/a/b;->m:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_7

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptPassword faulted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v0, ""

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptPassword faulted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptPassword faulted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptPassword faulted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_4
    move-exception v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptPassword faulted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_5
    move-exception v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptPassword faulted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_6
    move-exception v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptPassword faulted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_7
    move-exception v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptPassword faulted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic j(Lcom/paypal/android/a/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/a/b;->t()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/paypal/android/a/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/a/b;->C()Z

    move-result v0

    return v0
.end method

.method private k(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/paypal/android/a/b;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    const-string v0, "NetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response contains an error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "NetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception checking for error in response, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static synthetic l(Lcom/paypal/android/a/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/a/b;->D()Z

    move-result v0

    return v0
.end method

.method public static m()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "CA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "44"

    goto :goto_0

    :cond_2
    const-string v1, "AU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "61"

    goto :goto_0

    :cond_3
    const-string v1, "FR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "33"

    goto :goto_0

    :cond_4
    const-string v1, "ES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "34"

    goto :goto_0

    :cond_5
    const-string v1, "IT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "39"

    goto :goto_0

    :cond_6
    const-string v0, "1"

    goto :goto_0
.end method

.method static synthetic m(Lcom/paypal/android/a/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/a/b;->v()Z

    move-result v0

    return v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/a/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/paypal/android/a/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/a/b;->w()Z

    move-result v0

    return v0
.end method

.method static synthetic o()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/paypal/android/a/b;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Lcom/paypal/android/a/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/paypal/android/a/b;->u()Z

    move-result v0

    return v0
.end method

.method private static p()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "https://svcs.paypal.com/AdaptivePayments/"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, ""

    goto :goto_0

    :pswitch_2
    const-string v0, "https://svcs.sandbox.paypal.com/AdaptivePayments/"

    goto :goto_0

    :pswitch_3
    const-string v0, "https://www.stage2mb101.paypal.com:10279/AdaptivePayments/"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static q()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "GMAdapter"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, ""

    goto :goto_0

    :pswitch_2
    const-string v0, "GMAdapter"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static r()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "GMAdapter"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, ""

    goto :goto_0

    :pswitch_2
    const-string v0, "GMAdapter"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private s()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v1}, Lcom/paypal/android/a/m;->g(Ljava/util/Hashtable;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/paypal/android/a/n; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/a/b;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SetPaymentOptions/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/paypal/android/a/b;->k(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "setPaymentOptions"

    invoke-static {v4, v2, v1, v3}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v3, v1}, Lcom/paypal/android/a/m;->a(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "NetworkHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/paypal/android/a/n;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v3, v0}, Lcom/paypal/android/a/m;->a(Ljava/lang/String;Ljava/util/Hashtable;)Z

    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private t()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v1}, Lcom/paypal/android/a/m;->h(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/a/b;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GetAvailableShippingAddresses/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/paypal/android/a/b;->k(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "getAddresses"

    invoke-static {v4, v2, v1, v3}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v3, v1}, Lcom/paypal/android/a/m;->g(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v3, v0}, Lcom/paypal/android/a/m;->g(Ljava/lang/String;Ljava/util/Hashtable;)Z

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private u()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v1}, Lcom/paypal/android/a/m;->b(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/a/b;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Preapproval/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/paypal/android/a/b;->k(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "createPreapprovalRequest"

    invoke-static {v4, v2, v1, v3}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v3, v1}, Lcom/paypal/android/a/m;->b(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v3, v0}, Lcom/paypal/android/a/m;->b(Ljava/lang/String;Ljava/util/Hashtable;)Z

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private v()Z
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/paypal/android/a/m;->d(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/a/b;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PreapprovalDetails/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v5}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/paypal/android/a/b;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/paypal/android/a/m;->c(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v5

    :cond_0
    iget-object v1, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/paypal/android/a/m;->c(Ljava/lang/String;Ljava/util/Hashtable;)Z

    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    const-string v1, "Approved"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FATAL_ERROR_ID"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FATAL_ERROR_MESSAGE"

    const-string v2, "ANDROID_preapproval_already_approved"

    invoke-static {v2}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    const-string v2, "CorrelationId"

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    const-string v3, "PayKey"

    invoke-virtual {v2, v3}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "-1"

    const-string v4, "ANDROID_preapproval_already_approved"

    invoke-static {v4}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private w()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v1}, Lcom/paypal/android/a/m;->c(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/a/b;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ConfirmPreapproval/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/paypal/android/a/b;->k(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "confirmPreapprovalRequest"

    invoke-static {v4, v2, v1, v3}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v3, v1}, Lcom/paypal/android/a/m;->d(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v3, v0}, Lcom/paypal/android/a/m;->d(Ljava/lang/String;Ljava/util/Hashtable;)Z

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static x()Z
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getParentContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getParentContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v1

    if-ne v1, v6, :cond_1

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FATAL_ERROR_ID"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FATAL_ERROR_MESSAGE"

    const-string v2, "ANDROID_simulator_payment_block"

    invoke-static {v2}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    const-string v2, "CorrelationId"

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    const-string v3, "PayKey"

    invoke-virtual {v2, v3}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "-1"

    const-string v4, "ANDROID_simulator_payment_block"

    invoke-static {v4}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return v5

    :cond_1
    move v5, v6

    goto :goto_0
.end method

.method private y()Ljava/util/Hashtable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/paypal/android/a/m;->f(Ljava/util/Hashtable;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/paypal/android/a/n; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/paypal/android/a/n;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPal;->loge(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/a/b;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Pay/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v5}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/paypal/android/a/b;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "createPayment"

    invoke-static {v3, v1, v0, v2}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "<errorId>580022</errorId>"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ANDROID_580022"

    invoke-static {v0}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FATAL_ERROR_ID"

    const-string v2, "580022"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FATAL_ERROR_MESSAGE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    const-string v2, "CorrelationId"

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    const-string v3, "PayKey"

    invoke-virtual {v2, v3}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "580022"

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :try_start_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    move-object v0, v7

    goto/16 :goto_0

    :cond_1
    move-object v0, v7

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v2, v0}, Lcom/paypal/android/a/m;->a(Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "defaultFundingPlan"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    const-string v1, "ActionType"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "CREATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FATAL_ERROR_ID"

    const-string v2, "589009"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FATAL_ERROR_MESSAGE"

    const-string v2, "ANDROID_589009"

    invoke-static {v2}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    const-string v2, "CorrelationId"

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    const-string v3, "PayKey"

    invoke-virtual {v2, v3}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "589009"

    const-string v4, "ANDROID_589009"

    invoke-static {v4}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :try_start_2
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move-object v0, v7

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    goto/16 :goto_0

    :cond_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/paypal/android/a/b;->f:I

    move-object v0, v7

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private z()Ljava/util/Hashtable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/paypal/android/a/m;->e(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/paypal/android/a/b;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GetFundingPlans/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/paypal/android/a/b;->k(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "createFundingRequest"

    invoke-static {v4, v2, v0, v3}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v3, v0}, Lcom/paypal/android/a/m;->e(Ljava/lang/String;Ljava/util/Hashtable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-static {v3, v0}, Lcom/paypal/android/a/m;->e(Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    const-string v2, "FundingPlans"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "FATAL_ERROR_ID"

    const-string v3, "589009"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "FATAL_ERROR_MESSAGE"

    const-string v3, "ANDROID_589009"

    invoke-static {v3}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :try_start_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/paypal/android/a/b;->f:I

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/a/b;->g:I

    iput p1, p0, Lcom/paypal/android/a/b;->e:I

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v4

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    sget-object v3, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    const-string v2, "quickPay"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v8}, Lcom/paypal/android/a/b;->a(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPal;->getShippingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v7}, Lcom/paypal/android/a/b;->a(I)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "PayKey"

    invoke-virtual {v3, v1}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "PaymentExecStatus"

    invoke-virtual {v3, v2}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPal;->isHeavyCountry()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPal;->hasCreatedPIN()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v6}, Lcom/paypal/android/MEP/PayPalActivity;->setTransactionSuccessful(Z)V

    invoke-virtual {v0, v1, v2, v5}, Lcom/paypal/android/MEP/PayPalActivity;->paymentSucceeded(Ljava/lang/String;Ljava/lang/String;Z)V

    check-cast p2, Ljava/lang/String;

    sput-object p2, Lcom/paypal/android/MEP/a/e;->a:Ljava/lang/String;

    invoke-static {v7}, Lcom/paypal/android/MEP/a/d$1;->b(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1, v2, v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentSucceeded(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    sput-object p2, Lcom/paypal/android/MEP/a/h;->a:Ljava/lang/String;

    invoke-static {v8}, Lcom/paypal/android/MEP/a/d$1;->a(I)V

    goto :goto_0

    :pswitch_4
    const-string v1, "FundingPlanId"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPal;->getShippingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v7}, Lcom/paypal/android/a/b;->a(I)V

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    sget-object v1, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    :goto_1
    const-string v2, "AvailableAddresses"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/a/a/h;

    const-string v2, "ShippingAddressId"

    invoke-virtual {p0, v2}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_7

    const-string v2, "ShippingAddressId"

    invoke-virtual {v1}, Lcom/paypal/android/a/a/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/paypal/android/a/b;->k()I

    move-result v1

    :goto_2
    if-nez v1, :cond_5

    new-instance v2, Landroid/content/Intent;

    sget-object v7, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "FATAL_ERROR_ID"

    const-string v7, "-1"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "FATAL_ERROR_MESSAGE"

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPal;->getAdjustPaymentError()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v1, "CorrelationId"

    invoke-virtual {v3, v1}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "PayKey"

    invoke-virtual {v3, v2}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPal;->getAdjustPaymentError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v7}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    check-cast p2, Ljava/util/Hashtable;

    sput-object p2, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    iget-object v1, v3, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    goto :goto_1

    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    move v1, v5

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    if-eq v0, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "MPL Tracking"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Post: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Device"

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getAuthMethod()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getAuthMethod()I

    move-result v1

    if-ne v1, v4, :cond_4

    :cond_1
    const-string v0, "Password"

    :cond_2
    :goto_1
    const-string v1, "Simple"

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v3

    if-ne v3, v4, :cond_5

    const-string v1, "Preapproval"

    :cond_3
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://sstats.paypal-metrics.com/b/ss/paypalwireless/5/H.5--WAP/12345?pageName=android/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "mpl-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&c1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&c4=ver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&c5="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Android"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&c6="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getParentContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&c7="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&c9="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&c10="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getShippingEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Enabled"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queueTrackingPost (), queue tracking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/paypal/android/MEP/PayPal;->logd(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/paypal/android/a/b;->k:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/paypal/android/a/b;->k:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/paypal/android/a/b;->k:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getAuthMethod()I

    move-result v1

    if-ne v1, v5, :cond_2

    const-string v0, "PIN"

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    const-string v1, "Chained"

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v3

    if-ne v3, v5, :cond_3

    const-string v1, "Parallel"

    goto/16 :goto_2

    :cond_7
    const-string v0, "Disabled"

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FATAL_ERROR_ID"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FATAL_ERROR_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    const-string v2, "CorrelationId"

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    const-string v3, "PayKey"

    invoke-virtual {v2, v3}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "-1"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/paypal/android/a/b;->f:I

    if-nez v0, :cond_0

    const/16 v0, 0x198

    iput v0, p0, Lcom/paypal/android/a/b;->f:I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/paypal/android/a/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    return-object v0
.end method

.method public final i()V
    .locals 4

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    const-string v3, "ShippingAddressId"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PaymentCurrencyID"

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getCurrencyType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "CancelUrl"

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getCancelUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "ReturnUrl"

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getReturnUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getFeesPayer()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "EACHRECEIVER"

    :goto_0
    const-string v2, "FeesPayer"

    invoke-virtual {p0, v2, v0}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ActionType"

    const-string v2, "CREATE"

    invoke-virtual {p0, v0, v2}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Receivers"

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getIpnUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getIpnUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IpnNotificationUrl"

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getIpnUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getMemo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getMemo()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Memo"

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getMemo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v0, "delegate"

    invoke-virtual {p0, v0, p0}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/b;->a(I)V

    return-void

    :pswitch_0
    const-string v0, "SENDER"

    goto :goto_0

    :pswitch_1
    const-string v0, "PRIMARYRECEIVER"

    goto :goto_0

    :pswitch_2
    const-string v0, "SECONDARYONLY"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final j()V
    .locals 2

    const-string v0, "PreapprovalKey"

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getPreapprovalKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "delegate"

    invoke-virtual {p0, v0, p0}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/b;->a(I)V

    return-void
.end method

.method public final k()I
    .locals 15

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getDynamicAmountCalculationEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getShippingEnabled()Z

    move-result v0

    if-ne v0, v7, :cond_14

    iget-object v0, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    const-string v1, "ShippingAddressId"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    :goto_0
    const-string v2, "AvailableAddresses"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    move v3, v4

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/paypal/android/a/a/h;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/h;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_2
    new-instance v3, Lcom/paypal/android/MEP/MEPAddress;

    invoke-direct {v3}, Lcom/paypal/android/MEP/MEPAddress;-><init>()V

    invoke-virtual {v2}, Lcom/paypal/android/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/paypal/android/a/a/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/paypal/android/a/a/h;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/paypal/android/a/a/h;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/paypal/android/a/a/h;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/paypal/android/a/a/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0}, Lcom/paypal/android/MEP/MEPAddress;->setStreet1(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/paypal/android/MEP/MEPAddress;->setStreet2(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/paypal/android/MEP/MEPAddress;->setCity(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/paypal/android/MEP/MEPAddress;->setState(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lcom/paypal/android/MEP/MEPAddress;->setPostalcode(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/paypal/android/MEP/MEPAddress;->setCountrycode(Ljava/lang/String;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v10

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v1, v4

    :goto_3
    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    new-instance v5, Lcom/paypal/android/MEP/MEPReceiverAmounts;

    invoke-direct {v5}, Lcom/paypal/android/MEP/MEPReceiverAmounts;-><init>()V

    new-instance v6, Lcom/paypal/android/MEP/MEPAmounts;

    invoke-direct {v6}, Lcom/paypal/android/MEP/MEPAmounts;-><init>()V

    iput-object v6, v5, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getRecipient()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/paypal/android/MEP/MEPReceiverAmounts;->receiver:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getTax()Ljava/math/BigDecimal;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getTax()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/paypal/android/MEP/MEPAmounts;->setTax(Ljava/math/BigDecimal;)V

    :cond_0
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getShipping()Ljava/math/BigDecimal;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getShipping()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/paypal/android/MEP/MEPAmounts;->setShipping(Ljava/math/BigDecimal;)V

    :cond_1
    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getCurrencyType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getCurrencyType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/paypal/android/MEP/MEPAmounts;->setCurrency(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getSubtotal()Ljava/math/BigDecimal;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getSubtotal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/paypal/android/MEP/MEPAmounts;->setPaymentAmount(Ljava/math/BigDecimal;)V

    :cond_3
    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/paypal/android/a/b;->h:Ljava/util/Hashtable;

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getCurrencyType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/paypal/android/MEP/PayPalActivity;->adjustAmountsAdvanced(Lcom/paypal/android/MEP/MEPAddress;Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v11

    if-nez v11, :cond_8

    const/4 v7, -0x1

    :goto_4
    return v7

    :cond_8
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_13

    move v8, v4

    move v6, v4

    :goto_5
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v8, v0, :cond_f

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v11, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/MEP/MEPReceiverAmounts;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getTax()Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getTax()Ljava/math/BigDecimal;

    move-result-object v2

    :goto_6
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getShipping()Ljava/math/BigDecimal;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getShipping()Ljava/math/BigDecimal;

    move-result-object v3

    :goto_7
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getSubtotal()Ljava/math/BigDecimal;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getSubtotal()Ljava/math/BigDecimal;

    move-result-object v5

    :goto_8
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getRecipient()Ljava/lang/String;

    move-result-object v0

    iget-object v12, v1, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v12}, Lcom/paypal/android/MEP/MEPAmounts;->getTax()Ljava/math/BigDecimal;

    move-result-object v12

    iget-object v13, v1, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v13}, Lcom/paypal/android/MEP/MEPAmounts;->getShipping()Ljava/math/BigDecimal;

    move-result-object v13

    iget-object v14, v1, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v14}, Lcom/paypal/android/MEP/MEPAmounts;->getPaymentAmount()Ljava/math/BigDecimal;

    move-result-object v14

    iget-object v1, v1, Lcom/paypal/android/MEP/MEPReceiverAmounts;->receiver:Ljava/lang/String;

    if-ne v14, v5, :cond_9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_a
    new-instance v2, Ljava/math/BigDecimal;

    const-string v3, "0.0"

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    new-instance v3, Ljava/math/BigDecimal;

    const-string v5, "0.0"

    invoke-direct {v3, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    new-instance v5, Ljava/math/BigDecimal;

    const-string v12, "0.0"

    invoke-direct {v5, v12}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    if-ne v12, v2, :cond_e

    if-eq v13, v3, :cond_15

    :cond_e
    move v0, v7

    :goto_9
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v6, v0

    goto/16 :goto_5

    :cond_f
    if-eqz v6, :cond_14

    :goto_a
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-virtual {v11, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/MEP/MEPReceiverAmounts;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v2

    iget-object v3, v1, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v3}, Lcom/paypal/android/MEP/MEPAmounts;->getShipping()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/paypal/android/MEP/PayPalInvoiceData;->setShipping(Ljava/math/BigDecimal;)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;

    move-result-object v0

    iget-object v1, v1, Lcom/paypal/android/MEP/MEPReceiverAmounts;->amounts:Lcom/paypal/android/MEP/MEPAmounts;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/MEPAmounts;->getTax()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalInvoiceData;->setTax(Ljava/math/BigDecimal;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_10
    const-string v0, "PaymentCurrencyID"

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getCurrencyType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Receivers"

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getReceivers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getIpnUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getIpnUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "IpnNotificationUrl"

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getIpnUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getMemo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getMemo()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "Memo"

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getMemo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    const-string v0, "ActionType"

    const-string v1, "CREATE"

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "delegate"

    invoke-virtual {p0, v0, p0}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/paypal/android/a/b;->a(I)V

    goto/16 :goto_4

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_14
    move v7, v4

    goto/16 :goto_4

    :cond_15
    move v0, v6

    goto/16 :goto_9
.end method

.method public final l()V
    .locals 0

    return-void
.end method
