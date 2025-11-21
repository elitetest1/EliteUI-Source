.class public Landroid/text/Highlights;
.super Ljava/lang/Object;
.source "Highlights.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Highlights$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mHighlights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/Paint;",
            "[I>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/Paint;",
            "[I>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/Highlights;->mHighlights:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Landroid/text/Highlights-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/Highlights;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist getPaint(I)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Landroid/text/Highlights;->mHighlights:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method public whitelist getRanges(I)[I
    .locals 0

    iget-object p0, p0, Landroid/text/Highlights;->mHighlights:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public whitelist getSize()I
    .locals 0

    iget-object p0, p0, Landroid/text/Highlights;->mHighlights:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
