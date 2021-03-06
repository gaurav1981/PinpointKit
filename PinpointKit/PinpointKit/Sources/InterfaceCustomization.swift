//
//  InterfaceCustomization.swift
//  PinpointKit
//
//  Created by Andrew Harrison on 5/13/16.
//  Copyright © 2016 Lickability. All rights reserved.
//

/// A struct that supplies customized interface text and appearance values.
public struct InterfaceCustomization {
    let interfaceText: InterfaceText
    let appearance: Appearance
    
    /**
     Initializes an InterfaceCustomization object.
     
     - parameter interfaceText: The interfact text customization.
     - parameter appearance:    The appearance customization.     
     */
    public init(interfaceText: InterfaceText = InterfaceText(), appearance: Appearance = Appearance()) {
        self.interfaceText = interfaceText
        self.appearance = appearance
    }
    
    /**
     *  A struct containing information about the appearance of displayed components.
     */
    public struct Appearance {
        
        /// The tint color of PinpointKit views used to style interactive and selected elements.
        let tintColor: UIColor?
        
        /// The fill color for annotations. If none is supplied, the `tintColor` of the relevant view will be used.
        let annotationFillColor: UIColor?
        
        /// The stroke color for annotations.
        let annotationStrokeColor: UIColor
        
        /// The font used for navigation titles.
        let navigationTitleFont: UIFont
        
        /// The font used for the button that sends feedback.
        let feedbackSendButtonFont: UIFont
        
        /// The font used for the button that cancels feedback collection.
        let feedbackCancelButtonFont: UIFont
        
        /// The font used for the hint to the user on how to edit the screenshot from the feedback screen.
        let feedbackEditHintFont: UIFont
        
        /// The font used for the back button that takes the user back to the initial feedback collection screen.
        let feedbackBackButtonFont: UIFont

        /// The font used for the title of the cell that allows the user to toggle log collection.
        let logCollectionPermissionFont: UIFont
        
        /// The font used for displaying logs.
        let logFont: UIFont
        
        /// The font used for the text annotation tool segment in the editor.
        let editorTextAnnotationSegmentFont: UIFont
        
        /// The font used for text annotations in the editor.
        let editorTextAnnotationFont: UIFont
        
        /// The font used for the done button in the editor displayed while editing a text annotation.
        let editorTextAnnotationDoneButtonFont: UIFont
        
        /**
         Initializes an `Appearance` object with a optional annotation color properties.
         
         - parameter tintColor:                          The tint color of the interface.
         - parameter annotationFillColor:                The fill color for annotations. If none is supplied, the `tintColor` of the relevant view will be used.
         - parameter annotationStrokeColor:              The stroke color for annotations.
         - parameter navigationTitleFont:                The font used for navigation titles.
         - parameter feedbackSendButtonFont:             The font used for the button that sends feedback.
         - parameter feedbackCancelButtonFont:           The font used for the button that cancels feedback collection.
         - parameter feedbackEditHintFont:               The font used for the hint to the user on how to edit the screenshot from the feedback screen.
         - parameter feedbackBackButtonFont:             The font used for the back button that takes the user back to the initial feedback collection screen.
         - parameter logCollectionPermissionFont:        The font used for the title of the cell that allows the user to toggle log collection.
         - parameter logFont:                            The font used for displaying logs.
         - parameter editorTextAnnotationSegmentFont:    The font used for the text annotation tool segment in the editor.
         - parameter editorTextAnnotationFont:           The font used for text annotations in the editor.
         - parameter editorTextAnnotationDoneButtonFont: The font used for the done button in the editor displayed while editing a text annotation.
         */
        public init(tintColor: UIColor? = UIColor.pinpointOrangeColor(),
                    annotationFillColor: UIColor? = nil,
                    annotationStrokeColor: UIColor = .whiteColor(),
                    navigationTitleFont: UIFont = .sourceSansProFontOfSize(19, weight: .Semibold),
                    feedbackSendButtonFont: UIFont = .sourceSansProFontOfSize(19, weight: .Semibold),
                    feedbackCancelButtonFont: UIFont = .sourceSansProFontOfSize(19),
                    feedbackEditHintFont: UIFont = .sourceSansProFontOfSize(14),
                    feedbackBackButtonFont: UIFont = .sourceSansProFontOfSize(19),
                    logCollectionPermissionFont: UIFont = .sourceSansProFontOfSize(19),
                    logFont: UIFont = .menloRegularFontOfSize(10),
                    editorTextAnnotationSegmentFont: UIFont = .sourceSansProFontOfSize(18),
                    editorTextAnnotationFont: UIFont = .sourceSansProFontOfSize(32, weight: .Semibold),
                    editorTextAnnotationDoneButtonFont: UIFont = .sourceSansProFontOfSize(19, weight: .Semibold)) {
            self.tintColor = tintColor
            self.annotationFillColor = annotationFillColor
            self.annotationStrokeColor = annotationStrokeColor
            self.logFont = logFont
            self.navigationTitleFont = navigationTitleFont
            self.feedbackSendButtonFont = feedbackSendButtonFont
            self.feedbackCancelButtonFont = feedbackCancelButtonFont
            self.feedbackEditHintFont = feedbackEditHintFont
            self.feedbackBackButtonFont = feedbackBackButtonFont
            self.logCollectionPermissionFont = logCollectionPermissionFont
            self.editorTextAnnotationSegmentFont = editorTextAnnotationSegmentFont
            self.editorTextAnnotationFont = editorTextAnnotationFont
            self.editorTextAnnotationDoneButtonFont = editorTextAnnotationDoneButtonFont
        }
    }
    
    /**
     *  A struct containing user-facing strings for display in the interface.
     */
    public struct InterfaceText {
        
        /// The title of the feedback collection screen.
        let feedbackCollectorTitle: String?
        
        /// The title of a button that sends feedback.
        let feedbackSendButtonTitle: String
        
        /// The title of a button that cancels feedback collection. Setting this property to `nil` uses a default value.
        let feedbackCancelButtonTitle: String?
        
        /// The title of a back button that takes the user back to the initial feedback collection screen. Setting this property to `nil` uses a default value.
        let feedbackBackButtonTitle: String?
        
        /// A hint to the user on how to edit the screenshot from the feedback screen.
        let feedbackEditHint: String?
        
        /// The title of the log collection screen.
        let logCollectorTitle: String?
        
        /// The title of a cell that allows the user to toggle log collection.
        let logCollectionPermissionTitle: String
        
        ///  The title of a button that cancels text editing.
        let textEditingDismissButtonTitle: String
        
        /**
         Initializes an `InterfaceText` with custom values, using a default if a particular property is unspecified.
         
         - parameter feedbackCollectorTitle:        The title of the feedback collector.
         - parameter feedbackSendButtonTitle:       The title of the send button.
         - parameter feedbackCancelButtonTitle:     The title of the cancel button.
         - parameter feedbackBackButtonTitle:       The title of the back button.
         - parameter feedbackEditHint:              The hint to show during editing.
         - parameter logCollectorTitle:             The title of the log collector.
         - parameter logCollectionPermissionTitle:  The title of the permission button.
         - parameter textEditingDismissButtonTitle: The title of the text editing dismiss button.
         */
        public init(feedbackCollectorTitle: String? = NSLocalizedString("Report a Bug", comment: "Title of a view that reports a bug"),
                    feedbackSendButtonTitle: String = NSLocalizedString("Send", comment: "A button that sends feedback."),
                    feedbackCancelButtonTitle: String? = nil,
                    feedbackBackButtonTitle: String? = NSLocalizedString("Report", comment: "Back button title of a view that reports a bug"),
                    feedbackEditHint: String? = NSLocalizedString("Tap the screenshot to annotate.", comment: "A hint on how to edit the screenshot"),
                    logCollectorTitle: String? = NSLocalizedString("Console Log", comment: "Title of a view that collects logs"),
                    logCollectionPermissionTitle: String = NSLocalizedString("Include Console Log", comment: "Title of a button asking the user to include system logs"),
                    textEditingDismissButtonTitle: String = NSLocalizedString("Dismiss", comment: "Title of a button that dismisses text editing")) {
            self.feedbackCollectorTitle = feedbackCollectorTitle
            self.feedbackSendButtonTitle = feedbackSendButtonTitle
            self.feedbackCancelButtonTitle = feedbackCancelButtonTitle
            self.feedbackBackButtonTitle = feedbackBackButtonTitle
            self.feedbackEditHint = feedbackEditHint
            self.logCollectorTitle = logCollectorTitle
            self.logCollectionPermissionTitle = logCollectionPermissionTitle
            self.textEditingDismissButtonTitle = textEditingDismissButtonTitle
        }
    }
}
