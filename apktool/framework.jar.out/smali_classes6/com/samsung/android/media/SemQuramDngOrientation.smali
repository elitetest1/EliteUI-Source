.class public Lcom/samsung/android/media/SemQuramDngOrientation;
.super Ljava/lang/Object;
.source "SemQuramDngOrientation.java"


# static fields
.field public static final blacklist eMirror:I = 0x4

.field public static final blacklist eMirror180:I = 0x6

.field public static final blacklist eMirror90CCW:I = 0x7

.field public static final blacklist eMirror90CW:I = 0x5

.field public static final blacklist eNormal:I = 0x0

.field public static final blacklist eRotate180:I = 0x2

.field public static final blacklist eRotate90CCW:I = 0x3

.field public static final blacklist eRotate90CW:I = 0x1

.field public static final blacklist eUnknown:I = 0x8


# instance fields
.field blacklist mAdobeOrientation:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/media/SemQuramDngOrientation;->mAdobeOrientation:J

    return-void
.end method

.method public constructor blacklist <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/media/SemQuramDngOrientation;->mAdobeOrientation:J

    return-void
.end method


# virtual methods
.method public blacklist getOrientation()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/SemQuramDngOrientation;->mAdobeOrientation:J

    return-wide v0
.end method
