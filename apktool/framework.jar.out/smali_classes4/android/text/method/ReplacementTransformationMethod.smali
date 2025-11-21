.class public abstract Landroid/text/method/ReplacementTransformationMethod;
.super Ljava/lang/Object;
.source "ReplacementTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;,
        Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract whitelist getOriginal()[C
.end method

.method protected abstract whitelist getReplacement()[C
.end method

.method public whitelist getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod;->getOriginal()[C

    move-result-object p2

    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod;->getReplacement()[C

    move-result-object p0

    instance-of v0, p1, Landroid/text/Editable;

    if-nez v0, :cond_3

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-char v2, p2, v1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    if-ltz v2, :cond_1

    instance-of v0, p1, Landroid/text/Spannable;

    if-nez v0, :cond_3

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/text/SpannedString;

    new-instance v1, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;

    check-cast p1, Landroid/text/Spanned;

    invoke-direct {v1, p1, p2, p0}, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;-><init>(Landroid/text/Spanned;[C[C)V

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;

    invoke-direct {v0, p1, p2, p0}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;-><init>(Ljava/lang/CharSequence;[C[C)V

    invoke-virtual {v0}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;

    check-cast p1, Landroid/text/Spanned;

    invoke-direct {v0, p1, p2, p0}, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;-><init>(Landroid/text/Spanned;[C[C)V

    return-object v0

    :cond_4
    new-instance v0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;

    invoke-direct {v0, p1, p2, p0}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;-><init>(Ljava/lang/CharSequence;[C[C)V

    return-object v0
.end method

.method public whitelist onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
