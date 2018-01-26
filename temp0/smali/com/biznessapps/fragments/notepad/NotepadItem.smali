.class public Lcom/biznessapps/fragments/notepad/NotepadItem;
.super Lcom/biznessapps/model/CommonListEntity;
.source "NotepadItem.java"


# static fields
.field private static final serialVersionUID:J = -0x1536c0ecaf24ddcfL


# instance fields
.field private content:Ljava/lang/String;

.field private date:J

.field private id:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/biznessapps/model/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/biznessapps/fragments/notepad/NotepadItem;->date:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/biznessapps/fragments/notepad/NotepadItem;->content:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .param p1, "date"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/biznessapps/fragments/notepad/NotepadItem;->date:J

    .line 54
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/biznessapps/fragments/notepad/NotepadItem;->id:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/biznessapps/fragments/notepad/NotepadItem;->title:Ljava/lang/String;

    .line 40
    return-void
.end method
