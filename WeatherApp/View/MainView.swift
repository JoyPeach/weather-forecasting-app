import Foundation
import UIKit


class MainView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        self.addSubview(backgroundView)
        self.addSubview(mainStack)
        mainStack.addArrangedSubview(weatherIconStack)
        weatherIconStack.addArrangedSubview(weatherIcon)
        
        mainStack.addArrangedSubview(centerContentStack)
        mainStack.addArrangedSubview(locationAndDescStack)
        locationAndDescStack.addArrangedSubview(locationLabel)
        locationAndDescStack.addArrangedSubview(descriptionLabel)
        
        mainStack.addArrangedSubview(firstHorizontalStack)
        
        firstHorizontalStack.addArrangedSubview(UIView(frame: .zero))
        firstHorizontalStack.addArrangedSubview(humidityStack)
        humidityStack.addArrangedSubview(humidityIcon)
        humidityStack.addArrangedSubview(humidityLabel)
        
        firstHorizontalStack.addArrangedSubview(precipitationStack)
        precipitationStack.addArrangedSubview(precipitationIcon)
        precipitationStack.addArrangedSubview(precipitationLabel)
        
        firstHorizontalStack.addArrangedSubview(pressureStack)
        pressureStack.addArrangedSubview(pressureIcon)
        pressureStack.addArrangedSubview(pressureLabel)
        firstHorizontalStack.addArrangedSubview(UIView(frame: .zero))
        
        mainStack.addArrangedSubview(secondHorizontalStack)
        
        secondHorizontalStack.addArrangedSubview(UIView(frame: .zero))
        secondHorizontalStack.addArrangedSubview(windSpeedStack)
        windSpeedStack.addArrangedSubview(windSpeedIcon)
        windSpeedStack.addArrangedSubview(windSpeedLabel)
        
        secondHorizontalStack.addArrangedSubview(windDirectionStack)
        windDirectionStack.addArrangedSubview(windDirectionIcon)
        windDirectionStack.addArrangedSubview(windDirectionLabel)
        secondHorizontalStack.addArrangedSubview(UIView(frame: .zero))
    }
    
    private func setupConstraints() {
        backgroundView.pinEdges(to: self)
        mainStack.pinEdgesToSafeArea(of: self)
    }
    
    let backgroundView: UIView = {
        let view = UIView(frame: .zero)
        return view
    }()
    
    let mainStack: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 5
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = UIEdgeInsets(top: 20, left: 0, bottom: 40, right: 0)
        return stackView
    }()
    
    let weatherIconStack: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 5
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = UIEdgeInsets(top: 100, left: 0, bottom: 0, right: 0)
        return stackView
    }()
    
    let weatherIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.load(url: "https://openweathermap.org/img/wn/10d@2x.png")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let locationAndDescStack: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 5
        return stackView
    }()
    
    let centerContentStack: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 5
        return stackView
    }()

    
    let locationLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 30)
        label.textColor = .gray
        label.textAlignment = .center
        label.text = "Brest"
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 40)
        label.textColor = .link
        label.textAlignment = .center
        label.text = "18"
        return label
    }()
    
    let firstHorizontalStack: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .horizontal
        stackView.distribution = .equalCentering
        stackView.spacing = 5
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        return stackView
    }()
    
    let humidityStack: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 5
        return stackView
    }()
    
    let humidityIcon: UIImageView = {
        let image = UIImage(named: "humidity")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let humidityLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .gray
        label.textAlignment = .center
        label.text = "18"
        return label
    }()
    
    let precipitationStack: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 5
        return stackView
    }()
    
    let precipitationIcon: UIImageView = {
        let image = UIImage(named: "precipitation")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let precipitationLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .gray
        label.textAlignment = .center
        label.text = "18"
        return label
    }()
    
    let pressureStack: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 5
        return stackView
    }()
    
    let pressureIcon: UIImageView = {
        let image = UIImage(named: "pressure")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let pressureLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .gray
        label.textAlignment = .center
        label.text = "18"
        return label
    }()
    
    let secondHorizontalStack: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .horizontal
        stackView.distribution = .equalCentering
        stackView.spacing = 5
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 120, right: 0)
        return stackView
    }()
    
    let windSpeedStack: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 5
        return stackView
    }()
    
    let windSpeedIcon: UIImageView = {
        let image = UIImage(named: "wind")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let windSpeedLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .gray
        label.textAlignment = .center
        label.text = "18"
        return label
    }()
    
    let windDirectionStack: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 5
        return stackView
    }()
    
    let windDirectionIcon: UIImageView = {
        let image = UIImage(named: "wind-direction")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let windDirectionLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .gray
        label.textAlignment = .center
        label.text = "18"
        return label
    }()
    
}
