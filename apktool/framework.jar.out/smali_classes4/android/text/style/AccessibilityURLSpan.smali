.class public Landroid/text/style/AccessibilityURLSpan;
.super Landroid/text/style/URLSpan;
.source "AccessibilityURLSpan.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field final greylist-max-o mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    new-instance v0, Landroid/text/style/AccessibilityClickableSpan;

    invoke-direct {v0, p1}, Landroid/text/style/AccessibilityClickableSpan;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/text/style/URLSpan;)V
    .locals 1

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getId()I

    move-result p1

    invoke-direct {v0, p1}, Landroid/text/style/AccessibilityClickableSpan;-><init>(I)V

    iput-object v0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    return-void
.end method


# virtual methods
.method public greylist-max-o copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    iget-object p0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {p0, p1}, Landroid/text/style/AccessibilityClickableSpan;->copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public whitelist getSpanTypeId()I
    .locals 0

    invoke-virtual {p0}, Landroid/text/style/AccessibilityURLSpan;->getSpanTypeIdInternal()I

    move-result p0

    return p0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .locals 0

    const/16 p0, 0x1a

    return p0
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {p0, p1}, Landroid/text/style/AccessibilityClickableSpan;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/AccessibilityURLSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/text/style/URLSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    iget-object p0, p0, Landroid/text/style/AccessibilityURLSpan;->mAccessibilityClickableSpan:Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {p0, p1, p2}, Landroid/text/style/AccessibilityClickableSpan;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
