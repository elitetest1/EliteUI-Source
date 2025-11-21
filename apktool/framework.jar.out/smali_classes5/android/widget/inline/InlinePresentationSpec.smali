.class public final Landroid/widget/inline/InlinePresentationSpec;
.super Ljava/lang/Object;
.source "InlinePresentationSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/inline/InlinePresentationSpec$Builder;,
        Landroid/widget/inline/InlinePresentationSpec$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMaxSize:Landroid/util/Size;

.field private final blacklist mMinSize:Landroid/util/Size;

.field private final blacklist mStyle:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultStyle()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Landroid/widget/inline/InlinePresentationSpec;->defaultStyle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/widget/inline/InlinePresentationSpec$1;

    invoke-direct {v0}, Landroid/widget/inline/InlinePresentationSpec$1;-><init>()V

    sput-object v0, Landroid/widget/inline/InlinePresentationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    const-class v2, Landroid/annotation/NonNull;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, v3, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/util/Size;Landroid/util/Size;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p3, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    const-class p0, Landroid/annotation/NonNull;

    invoke-static {p0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static blacklist defaultStyle()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method private blacklist styleEquals(Landroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/internal/widget/InlinePresentationStyleUtils;->bundleEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p0

    return p0
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
    check-cast p1, Landroid/widget/inline/InlinePresentationSpec;

    iget-object v2, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    iget-object v3, p1, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    iget-object v3, p1, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p1, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroid/widget/inline/InlinePresentationSpec;->styleEquals(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist filterContentTypes()V
    .locals 0

    iget-object p0, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/internal/widget/InlinePresentationStyleUtils;->filterContentTypes(Landroid/os/Bundle;)V

    return-void
.end method

.method public whitelist getMaxSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    return-object p0
.end method

.method public whitelist getMinSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    return-object p0
.end method

.method public whitelist getStyle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InlinePresentationSpec { minSize = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", style = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    iget-object p2, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    iget-object p0, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
