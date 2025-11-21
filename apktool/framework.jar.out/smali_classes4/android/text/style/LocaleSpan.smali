.class public Landroid/text/style/LocaleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "LocaleSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final greylist-max-o mLocales:Landroid/os/LocaleList;


# direct methods
.method public constructor whitelist <init>(Landroid/os/LocaleList;)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    const-string v0, "locales cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/LocaleList;

    iput-object p1, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;)V
    .locals 3

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    return-void
.end method

.method private static greylist-max-o apply(Landroid/graphics/Paint;Landroid/os/LocaleList;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getLocale()Ljava/util/Locale;
    .locals 1

    iget-object p0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getLocales()Landroid/os/LocaleList;
    .locals 0

    iget-object p0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    return-object p0
.end method

.method public whitelist getSpanTypeId()I
    .locals 0

    invoke-virtual {p0}, Landroid/text/style/LocaleSpan;->getSpanTypeIdInternal()I

    move-result p0

    return p0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .locals 0

    const/16 p0, 0x17

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocaleSpan{locales="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/text/style/LocaleSpan;->getLocales()Landroid/os/LocaleList;

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

    iget-object p0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    invoke-static {p1, p0}, Landroid/text/style/LocaleSpan;->apply(Landroid/graphics/Paint;Landroid/os/LocaleList;)V

    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0

    iget-object p0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    invoke-static {p1, p0}, Landroid/text/style/LocaleSpan;->apply(Landroid/graphics/Paint;Landroid/os/LocaleList;)V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/LocaleSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p0, p1, p2}, Landroid/os/LocaleList;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
