.class public Landroid/text/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Selection$MemoryTextWatcher;,
        Landroid/text/Selection$PositionIterator;,
        Landroid/text/Selection$MEMORY;,
        Landroid/text/Selection$START;,
        Landroid/text/Selection$END;
    }
.end annotation


# static fields
.field private static final blacklist PARAGRAPH_SEPARATOR:C = '\n'

.field public static final whitelist SELECTION_END:Ljava/lang/Object;

.field private static final greylist-max-o SELECTION_MEMORY:Ljava/lang/Object;

.field public static final whitelist SELECTION_START:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetSELECTION_MEMORY()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/text/Selection$MEMORY;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/Selection$MEMORY;-><init>(Landroid/text/Selection-IA;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    new-instance v0, Landroid/text/Selection$START;

    invoke-direct {v0, v1}, Landroid/text/Selection$START;-><init>(Landroid/text/Selection-IA;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    new-instance v0, Landroid/text/Selection$END;

    invoke-direct {v0, v1}, Landroid/text/Selection$END;-><init>(Landroid/text/Selection-IA;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o chooseHorizontal(Landroid/text/Layout;III)I
    .locals 2

    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    invoke-virtual {p0, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p0

    if-gez p1, :cond_0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_0
    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    :goto_0
    return p2

    :cond_1
    return p3

    :cond_2
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p0

    if-ne p0, p1, :cond_3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_3
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static whitelist extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    if-ge v2, v0, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    return v6

    :cond_0
    move-object v0, p0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result p0

    if-eq v3, p0, :cond_1

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result p0

    const/4 p1, -0x1

    invoke-static {v0, p0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;II)V

    :cond_1
    return v6
.end method

.method public static whitelist extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    invoke-static {p0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    :cond_0
    return v1
.end method

.method public static whitelist extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    invoke-static {p0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    :cond_0
    return v1
.end method

.method public static final whitelist extendSelection(Landroid/text/Spannable;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method private static greylist-max-o extendSelection(Landroid/text/Spannable;II)V
    .locals 2

    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p1, :cond_0

    const/16 v1, 0x22

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    invoke-static {p0, p2}, Landroid/text/Selection;->updateMemory(Landroid/text/Spannable;I)V

    return-void
.end method

.method public static whitelist extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static whitelist extendToParagraphEnd(Landroid/text/Spannable;)Z
    .locals 3

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    invoke-static {p0, v2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    :cond_0
    if-eq v1, v0, :cond_1

    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static whitelist extendToParagraphStart(Landroid/text/Spannable;)Z
    .locals 4

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0xa

    invoke-static {p0, v2, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    :cond_0
    if-eq v1, v0, :cond_1

    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v3
.end method

.method public static whitelist extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    return v0
.end method

.method public static whitelist extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    const/4 v6, 0x1

    if-lez v2, :cond_0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    return v6

    :cond_0
    move-object v0, p0

    if-eqz v3, :cond_1

    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    :cond_1
    return v6
.end method

.method private static greylist-max-o findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I
    .locals 1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    mul-int/2addr p2, v0

    if-gez p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/text/Layout;->getLineStart(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p0, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, -0x1

    return p2
.end method

.method public static final whitelist getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 1

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/Spanned;

    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static greylist-max-o getSelectionMemory(Ljava/lang/CharSequence;)I
    .locals 1

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/Spanned;

    sget-object v0, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static final whitelist getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 1

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/Spanned;

    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static whitelist moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 8

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v1, 0x0

    const/4 v7, 0x1

    if-eq v0, v4, :cond_1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    if-nez p1, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p0

    if-ne v0, p0, :cond_0

    return v1

    :cond_0
    return v7

    :cond_1
    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    sub-int/2addr v0, v7

    if-ge v3, v0, :cond_2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    return v7

    :cond_2
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p1

    if-eq v4, p1, :cond_3

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v7

    :cond_3
    return v1
.end method

.method public static whitelist moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 4

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/4 v3, -0x1

    invoke-static {p1, v3, v0, v1}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v2

    :cond_0
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result p1

    if-eq p1, v1, :cond_1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static whitelist moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {p1, v2, v0, v1}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v2

    :cond_0
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result p1

    if-eq p1, v1, :cond_1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist moveToFollowing(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/text/Selection$PositionIterator;->following(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static whitelist moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static whitelist moveToParagraphEnd(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {p1, v2, v0, v1}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v2

    :cond_0
    add-int/lit8 p1, v1, 0x1

    const/16 v0, 0xa

    invoke-static {p0, v0, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p1

    :cond_1
    if-eq p1, v1, :cond_2

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static whitelist moveToParagraphStart(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 4

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {p1, v2, v0, v1}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v3

    :cond_0
    const/16 p1, 0xa

    sub-int/2addr v0, v3

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v2, :cond_1

    move p1, v0

    :cond_1
    if-eq p1, v1, :cond_2

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v3

    :cond_2
    return v0
.end method

.method public static greylist moveToPreceding(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/text/Selection$PositionIterator;->preceding(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static whitelist moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v0
.end method

.method public static whitelist moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 8

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v1, 0x0

    const/4 v7, 0x1

    if-eq v0, v4, :cond_1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    if-nez p1, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p0

    if-ne v0, p0, :cond_0

    return v1

    :cond_0
    return v7

    :cond_1
    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    return v7

    :cond_2
    if-eqz v4, :cond_3

    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v7

    :cond_3
    return v1
.end method

.method private static greylist-max-o removeMemory(Landroid/text/Spannable;)V
    .locals 4

    sget-object v0, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/Selection$MemoryTextWatcher;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Selection$MemoryTextWatcher;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final whitelist removeSelection(Landroid/text/Spannable;)V
    .locals 2

    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v1, 0x200

    invoke-interface {p0, v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;I)V

    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-static {p0}, Landroid/text/Selection;->removeMemory(Landroid/text/Spannable;)V

    return-void
.end method

.method public static final whitelist selectAll(Landroid/text/Spannable;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public static final whitelist setSelection(Landroid/text/Spannable;I)V
    .locals 0

    invoke-static {p0, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public static whitelist setSelection(Landroid/text/Spannable;II)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    return-void
.end method

.method private static greylist-max-o setSelection(Landroid/text/Spannable;III)V
    .locals 2

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v0, p1, :cond_1

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v1, 0x222

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    sget-object p1, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v0, 0x22

    invoke-interface {p0, p1, p2, p2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p0, p3}, Landroid/text/Selection;->updateMemory(Landroid/text/Spannable;I)V

    return-void
.end method

.method private static greylist-max-o setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    add-int/2addr p2, p4

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p4

    const/4 v1, -0x1

    if-ne v0, p4, :cond_1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionMemory(Ljava/lang/CharSequence;)I

    move-result p4

    if-le p4, v1, :cond_0

    invoke-virtual {p1, p4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    move p3, p4

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p4

    invoke-virtual {p1, p2, p4}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    :goto_0
    move v1, p3

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineStart(I)I

    move-result p1

    :goto_1
    if-eqz p5, :cond_2

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;II)V

    return-void

    :cond_2
    invoke-static {p0, p1, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    return-void
.end method

.method private static greylist-max-o updateMemory(Landroid/text/Spannable;I)V
    .locals 4

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionMemory(Ljava/lang/CharSequence;)I

    move-result v1

    if-eq p1, v1, :cond_0

    sget-object v2, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    const/16 v3, 0x22

    invoke-interface {p0, v2, p1, p1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    if-ne v1, v0, :cond_0

    new-instance p1, Landroid/text/Selection$MemoryTextWatcher;

    invoke-direct {p1}, Landroid/text/Selection$MemoryTextWatcher;-><init>()V

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/text/Selection;->removeMemory(Landroid/text/Spannable;)V

    return-void
.end method
