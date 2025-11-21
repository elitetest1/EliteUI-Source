.class public final Landroid/view/textclassifier/TextLinks$Request;
.super Ljava/lang/Object;
.source "TextLinks.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextLinks$Request$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextLinks$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mDefaultLocales:Landroid/os/LocaleList;

.field private final greylist-max-o mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mLegacyFallback:Z

.field private final blacklist mReferenceTime:Ljava/time/ZonedDateTime;

.field private blacklist mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

.field private final greylist-max-o mText:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$Request;
    .locals 0

    invoke-static {p0}, Landroid/view/textclassifier/TextLinks$Request;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$Request;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextLinks$Request$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextLinks$Request$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextLinks$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/time/ZonedDateTime;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/view/textclassifier/TextLinks$Request;->mDefaultLocales:Landroid/os/LocaleList;

    iput-object p3, p0, Landroid/view/textclassifier/TextLinks$Request;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    iput-boolean p4, p0, Landroid/view/textclassifier/TextLinks$Request;->mLegacyFallback:Z

    iput-object p5, p0, Landroid/view/textclassifier/TextLinks$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    iput-object p6, p0, Landroid/view/textclassifier/TextLinks$Request;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/time/ZonedDateTime;Landroid/os/Bundle;Landroid/view/textclassifier/TextLinks-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/view/textclassifier/TextLinks$Request;-><init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/time/ZonedDateTime;Landroid/os/Bundle;)V

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$Request;
    .locals 7

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-class v0, Landroid/os/LocaleList;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    const-class v3, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    invoke-static {v4}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v5, v4

    :goto_0
    const-class v4, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p0, v2, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-object v2, v0

    new-instance v0, Landroid/view/textclassifier/TextLinks$Request;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/TextLinks$Request;-><init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/time/ZonedDateTime;Landroid/os/Bundle;)V

    invoke-virtual {v0, p0}, Landroid/view/textclassifier/TextLinks$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getCallingPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextLinks$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getCallingPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getDefaultLocales()Landroid/os/LocaleList;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextLinks$Request;->mDefaultLocales:Landroid/os/LocaleList;

    return-object p0
.end method

.method public whitelist getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextLinks$Request;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object p0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextLinks$Request;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist getReferenceTime()Ljava/time/ZonedDateTime;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextLinks$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    return-object p0
.end method

.method public blacklist getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextLinks$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-object p0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextLinks$Request;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public greylist-max-o isLegacyFallback()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/textclassifier/TextLinks$Request;->mLegacyFallback:Z

    return p0
.end method

.method public blacklist setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/view/textclassifier/TextLinks$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
