.class Landroid/content/Intent$CreatorTokenInfo;
.super Ljava/lang/Object;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreatorTokenInfo"
.end annotation


# instance fields
.field private blacklist mCreatorToken:Landroid/os/IBinder;

.field private blacklist mNestedIntentKeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/Intent$NestedIntentKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCreatorToken(Landroid/content/Intent$CreatorTokenInfo;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/content/Intent$CreatorTokenInfo;->mCreatorToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/content/Intent$CreatorTokenInfo;->mNestedIntentKeys:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCreatorToken(Landroid/content/Intent$CreatorTokenInfo;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/content/Intent$CreatorTokenInfo;->mCreatorToken:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;Landroid/util/ArraySet;)V
    .locals 0

    iput-object p1, p0, Landroid/content/Intent$CreatorTokenInfo;->mNestedIntentKeys:Landroid/util/ArraySet;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Intent-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/Intent$CreatorTokenInfo;-><init>()V

    return-void
.end method
