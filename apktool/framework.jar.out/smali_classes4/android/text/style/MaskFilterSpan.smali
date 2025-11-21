.class public Landroid/text/style/MaskFilterSpan;
.super Landroid/text/style/CharacterStyle;
.source "MaskFilterSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private greylist-max-o mFilter:Landroid/graphics/MaskFilter;


# direct methods
.method public constructor whitelist <init>(Landroid/graphics/MaskFilter;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput-object p1, p0, Landroid/text/style/MaskFilterSpan;->mFilter:Landroid/graphics/MaskFilter;

    return-void
.end method


# virtual methods
.method public whitelist getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 0

    iget-object p0, p0, Landroid/text/style/MaskFilterSpan;->mFilter:Landroid/graphics/MaskFilter;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MaskFilterSpan{filter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/text/style/MaskFilterSpan;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    iget-object p0, p0, Landroid/text/style/MaskFilterSpan;->mFilter:Landroid/graphics/MaskFilter;

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void
.end method
