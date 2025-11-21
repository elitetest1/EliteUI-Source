.class public final Landroid/text/FontConfig$FontFamily;
.super Ljava/lang/Object;
.source "FontConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontFamily"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/FontConfig$FontFamily$Variant;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/FontConfig$FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist VARIANT_COMPACT:I = 0x1

.field public static final whitelist VARIANT_DEFAULT:I = 0x0

.field public static final whitelist VARIANT_ELEGANT:I = 0x2


# instance fields
.field private final blacklist mFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocaleList:Landroid/os/LocaleList;

.field private final blacklist mVariant:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/FontConfig$FontFamily$1;

    invoke-direct {v0}, Landroid/text/FontConfig$FontFamily$1;-><init>()V

    sput-object v0, Landroid/text/FontConfig$FontFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Landroid/os/LocaleList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;",
            "Landroid/os/LocaleList;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    iput-object p2, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    iput p3, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/text/FontConfig$FontFamily;

    iget v2, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

    iget v3, p1, Landroid/text/FontConfig$FontFamily;->mVariant:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    iget-object v3, p1, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    iget-object p1, p1, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getFontList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    return-object p0
.end method

.method public greylist-max-r getFonts()[Landroid/text/FontConfig$Font;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/FontConfig$Font;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/FontConfig$Font;

    return-object p0
.end method

.method public blacklist getLanguages()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getLocaleList()Landroid/os/LocaleList;
    .locals 0

    iget-object p0, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    return-object p0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getVariant()I
    .locals 0

    iget p0, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    iget-object v1, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    iget p0, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FontFamily{mFonts="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLocaleList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVariant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object p2, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget p0, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
