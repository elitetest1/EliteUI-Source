.class public Landroid/text/style/LineBackgroundSpan$Standard;
.super Ljava/lang/Object;
.source "LineBackgroundSpan.java"

# interfaces
.implements Landroid/text/style/LineBackgroundSpan;
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/LineBackgroundSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standard"
.end annotation


# instance fields
.field private final blacklist mColor:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 5

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget v1, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, p3

    int-to-float v2, p5

    int-to-float v3, p4

    int-to-float v4, p7

    move-object p3, p1

    move-object p8, p2

    move p4, v1

    move p5, v2

    move p6, v3

    move p7, v4

    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final whitelist getColor()I
    .locals 0

    iget p0, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    return p0
.end method

.method public whitelist getSpanTypeId()I
    .locals 0

    invoke-virtual {p0}, Landroid/text/style/LineBackgroundSpan$Standard;->getSpanTypeIdInternal()I

    move-result p0

    return p0
.end method

.method public blacklist getSpanTypeIdInternal()I
    .locals 0

    const/16 p0, 0x1b

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/LineBackgroundSpan$Standard;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    iget p0, p0, Landroid/text/style/LineBackgroundSpan$Standard;->mColor:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
