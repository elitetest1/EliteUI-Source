.class public Landroid/text/WordSegmentFinder;
.super Landroid/text/SegmentFinder;
.source "WordSegmentFinder.java"


# instance fields
.field private final blacklist mText:Ljava/lang/CharSequence;

.field private final blacklist mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/icu/util/ULocale;)V
    .locals 1

    invoke-direct {p0}, Landroid/text/SegmentFinder;-><init>()V

    iput-object p1, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    new-instance v0, Landroid/text/method/WordIterator;

    invoke-direct {v0, p2}, Landroid/text/method/WordIterator;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    const/4 p0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-virtual {v0, p1, p0, p2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/method/WordIterator;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/SegmentFinder;-><init>()V

    iput-object p1, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    return-void
.end method


# virtual methods
.method public whitelist nextEndBoundary(I)I
    .locals 2

    :cond_0
    iget-object v0, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    return p1
.end method

.method public whitelist nextStartBoundary(I)I
    .locals 2

    :cond_0
    iget-object v0, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v1, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public whitelist previousEndBoundary(I)I
    .locals 2

    :cond_0
    iget-object v0, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public whitelist previousStartBoundary(I)I
    .locals 1

    :cond_0
    iget-object v0, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    return p1
.end method
