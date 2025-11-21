.class public Landroid/window/ConfigurationChangeSetting$FontScaleSetting;
.super Landroid/window/ConfigurationChangeSetting;
.source "ConfigurationChangeSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ConfigurationChangeSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontScaleSetting"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ConfigurationChangeSetting$FontScaleSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final blacklist mFontScaleFactor:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting$1;

    invoke-direct {v0}, Landroid/window/ConfigurationChangeSetting$FontScaleSetting$1;-><init>()V

    sput-object v0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(F)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/window/ConfigurationChangeSetting;-><init>(ILandroid/window/ConfigurationChangeSetting-IA;)V

    iput p1, p0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->mFontScaleFactor:F

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-direct {p0, p1}, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;-><init>(F)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;

    iget p0, p0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->mFontScaleFactor:F

    iget p1, p1, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->mFontScaleFactor:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget p0, p0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->mFontScaleFactor:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/window/ConfigurationChangeSetting;->writeToParcel(Landroid/os/Parcel;I)V

    iget p0, p0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->mFontScaleFactor:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
