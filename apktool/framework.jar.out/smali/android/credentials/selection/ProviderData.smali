.class public abstract Landroid/credentials/selection/ProviderData;
.super Ljava/lang/Object;
.source "ProviderData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist EXTRA_DISABLED_PROVIDER_DATA_LIST:Ljava/lang/String; = "android.credentials.selection.extra.DISABLED_PROVIDER_DATA_LIST"

.field public static final blacklist EXTRA_ENABLED_PROVIDER_DATA_LIST:Ljava/lang/String; = "android.credentials.selection.extra.ENABLED_PROVIDER_DATA_LIST"


# instance fields
.field private final blacklist mProviderFlattenedComponentName:Ljava/lang/String;


# direct methods
.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/credentials/selection/ProviderData;->mProviderFlattenedComponentName:Ljava/lang/String;

    const-class p0, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/credentials/selection/ProviderData;->mProviderFlattenedComponentName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getProviderFlattenedComponentName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/credentials/selection/ProviderData;->mProviderFlattenedComponentName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Landroid/credentials/selection/ProviderData;->mProviderFlattenedComponentName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
