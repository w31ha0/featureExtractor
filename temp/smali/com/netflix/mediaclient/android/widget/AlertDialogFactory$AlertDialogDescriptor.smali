.class public Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;
.super Ljava/lang/Object;
.source "AlertDialogFactory.java"


# instance fields
.field message:Ljava/lang/String;

.field posButtonHandler:Ljava/lang/Runnable;

.field posButtonLabel:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;->title:Ljava/lang/String;

    .line 221
    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;->message:Ljava/lang/String;

    .line 222
    iput-object p3, p0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;->posButtonLabel:Ljava/lang/String;

    .line 223
    iput-object p4, p0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;->posButtonHandler:Ljava/lang/Runnable;

    .line 224
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;->message:Ljava/lang/String;

    return-object v0
.end method
