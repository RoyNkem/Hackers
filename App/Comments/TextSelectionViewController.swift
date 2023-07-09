//
//  TextSelectionViewController.swift
//  Hackers
//
//  Created by Peter Ajayi on 08/07/2023.
//  Copyright © 2023 Glass Umbrella. All rights reserved.
//

import UIKit

final class TextSelectionViewController: UIViewController {

	var comment: String?

	@IBOutlet private var commentTextView: UITextView!

	override func viewDidLoad() {
		super.viewDidLoad()
		setup()
	}

	private func setup() {
		view.backgroundColor = AppTheme.default.backgroundColor
		setupCommentTextView()
	}

	private func setupCommentTextView() {
		commentTextView.attributedText = attributedComment()
		commentTextView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
		commentTextView.textColor = AppTheme.default.textColor
		commentTextView.selectAll(nil)
	}
	
	private func attributedComment() -> NSAttributedString? {
		   guard let comment = comment else { return nil }
		   
		   let commentFont = UIFont.preferredFont(forTextStyle: .body)
		   let attributes: [NSAttributedString.Key: Any] = [.font: commentFont]
		   let attributedString = NSAttributedString(string: comment, attributes: attributes)
		   
		   return attributedString
	   }

	@IBAction private func didPressDone(_ sender: Any) {
		dismiss(animated: true)
	}
}
