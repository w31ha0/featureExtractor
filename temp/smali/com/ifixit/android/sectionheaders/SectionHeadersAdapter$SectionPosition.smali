.class Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;
.super Ljava/lang/Object;
.source "SectionHeadersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SectionPosition"
.end annotation


# instance fields
.field public position:I

.field public section:Lcom/ifixit/android/sectionheaders/Section;

.field public sectionNumber:I


# direct methods
.method public constructor <init>(Lcom/ifixit/android/sectionheaders/Section;II)V
    .locals 0
    .param p1, "section"    # Lcom/ifixit/android/sectionheaders/Section;
    .param p2, "position"    # I
    .param p3, "sectionNumber"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->section:Lcom/ifixit/android/sectionheaders/Section;

    .line 21
    iput p2, p0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->position:I

    .line 22
    iput p3, p0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->sectionNumber:I

    .line 23
    return-void
.end method
